import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/network/network_error.dart';
import 'package:trueme/core/services/language_service.dart';
import 'package:trueme/core/services/sentry_service.dart';
import 'package:trueme/features/auth/data/user_token_repository.dart';
import 'package:trueme/features/auth/domain/authentication_repository/authentication_repository_impl.dart';
import 'package:trueme/features/authorization/authorization_bloc.dart';

class CustomQueuedInterceptorsWrapper extends QueuedInterceptorsWrapper {
  CustomQueuedInterceptorsWrapper({
    required this.dio,
    required this.userTokenRepository,
    required this.authorizationBloc,
    required this.authenticationRepository,
    required this.languageService,
  });

  final Dio dio;
  final UserTokenRepository userTokenRepository;
  final AuthorizationBloc authorizationBloc;
  final AuthenticationRepository authenticationRepository;
  final LanguageService languageService;

  @override
  void onResponse(Response<dynamic> response,
      ResponseInterceptorHandler handler,) {
    if (kDebugMode) {
      print('<= ${response.statusCode}  PATH: ${response.realUri}');
      print(response.data);
    }
    return super.onResponse(response, handler);
  }

  @override
  Future<void> onRequest(RequestOptions options,
      RequestInterceptorHandler handler,) async {
    if (kDebugMode) {
      print('=> ${options.method} ${options.path}');
      print('DATA: ${options.data}');
      print('QUERY: ${options.queryParameters}');
    }

    if (options.path != '/api/Auth/ExchangeExternalToken') {
      final token = await userTokenRepository.getUserToken();

      AppLogger.dev(token);

      if (token != null) {
        options.headers.addAll(
          <String, String>{
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Encoding': 'identity'
            ,},
        );
      }
    }

    if (kDebugMode) {
      print('HEADERS: ${options.headers}');
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioException err,
      ErrorInterceptorHandler handler,) async {
    if (err.response?.statusCode == 401) {
      final refreshResult =
      await authenticationRepository.exchangeRefreshToken();
      if (refreshResult.isRight()) {
        // Refresh token failed, logout user
        AppLogger.dev(
            'Refresh token failed, signing out and moving to login page',);

        // Add Sentry tracking for refresh token failure
        await SentryService.captureException(
          Exception('Refresh token failed - user logged out'),
          extra: {
            'path': err.requestOptions.path,
            'method': err.requestOptions.method,
            'statusCode': 401,
            'error_type': 'refresh_token_failure',
            'auth_event': 'refresh_failed'
            ,},
        );

        authorizationBloc.add(const AuthorizationEvent.onLogout());
        return;
      }

      // Refresh token succeeded, retry the original request
      final newOptions = Options(
        method: err.requestOptions.method,
        headers: err.requestOptions.headers,
      );
      final newAccessToken = await userTokenRepository.getUserToken();
      newOptions.headers!['Authorization'] = 'Bearer $newAccessToken';

      try {
        final response = await dio.request<void>(
          err.requestOptions.path,
          options: newOptions,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
        );
        return handler.resolve(response);
      } on DioException catch (e) {
        return handler.next(e);
      }
    }

    // Track network errors in Sentry with relevant context
    final errorContext = <String, dynamic>{
      'path': err.requestOptions.path,
      'method': err.requestOptions.method,
      'statusCode': err.response?.statusCode,
      'error_type': err.type.toString(),
    };

    // Add breadcrumb for the network request that failed
    SentryService.addBreadcrumb(
      message: 'Network request failed',
      category: 'network',
      data: {
        'url': err.requestOptions.uri.toString(),
        'method': err.requestOptions.method,
        'status_code': err.response?.statusCode,
      },
    );

    switch (err.type) {
      case DioExceptionType.connectionError:
        await SentryService.captureException(
          NoInternetConnectionException(err.requestOptions),
          extra: errorContext,
        );
        return handler.reject(
            NoInternetConnectionException(err.requestOptions,),);

      case DioExceptionType.connectionTimeout:
        await SentryService.captureException(
          TimeOutException(err.requestOptions),
          extra: errorContext,
        );
        return handler.reject(TimeOutException(err.requestOptions));

      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        await SentryService.captureException(
          TimeOutException(err.requestOptions),
          extra: errorContext,
        );
        return handler.reject(TimeOutException(err.requestOptions));

      case DioExceptionType.badResponse:
        final statusCode = err.response!.statusCode!;

        if (statusCode == 400) {
          await SentryService.captureException(
            NotFoundException(err.requestOptions, err.response),
            extra: errorContext,
          );
          return handler.reject(
              NotFoundException(err.requestOptions, err.response),);
        }

        if (statusCode == 404) {
          SentryService.addBreadcrumb(
            message: 'Resource not found (404)',
            category: 'network.404',
            data: {
              'url': err.requestOptions.uri.toString(),
              'method': err.requestOptions.method,
            },
          );
          return handler.next(err);
        }

        if (statusCode == 403) {
          final responseData = err.response?.data;
          if (responseData is Map<String, dynamic>) {
            final detail = responseData['detail'] as String?;
            if (detail == 'OutdatedAppVersion' ||
                detail == 'MissingAppVersion') {
              authorizationBloc.add(const AuthorizationEvent.onForceUpdate());
              return;
            }
          }
          SentryService.addBreadcrumb(
            message: 'Resource not found (403)',
            category: 'network.403',
            data: {
              'url': err.requestOptions.uri.toString(),
              'method': err.requestOptions.method,
            },
          );
          authorizationBloc.add(const AuthorizationEvent.onLogout());
          return;
        }

        if (statusCode >= 402 && statusCode <= 499 && statusCode != 403) {
          await SentryService.captureException(err, extra: errorContext);
          return handler.reject(err);
        }

        if (statusCode >= 500 && statusCode <= 600) {
          try {
            final responseData = err.response?.data;
            final enhancedContext = <String, dynamic>{
              'path': err.requestOptions.path,
              'method': err.requestOptions.method,
              'statusCode': statusCode,
              'error_type': err.type.toString(),
              'raw_response': responseData?.toString(),
            };

            if (responseData is Map<String, dynamic>) {
              final errorTitle = responseData['title']?.toString();
              final errorDetail = responseData['detail']?.toString();

              if (errorTitle != null) {
                enhancedContext['error_title'] = errorTitle;
              }
              if (errorDetail != null) {
                enhancedContext['error_detail'] = errorDetail;
              }

              if (responseData['exceptionDetails'] is List) {
                enhancedContext['exception_details'] =
                    (responseData['exceptionDetails'] as List).map((item) {
                      if (item is Map) {
                        return '${item['type'] ?? ''}: ${item['message'] ??
                            ''}';
                      }
                      return item.toString();
                    }).toList();
              }

              await SentryService.captureException(
                Exception('Backend Server Error: ${errorTitle ??
                    'Unknown'} - ${errorDetail ?? ''}'),
                extra: enhancedContext,
              );
              return handler.reject(
                  InternalServerErrorException(err.requestOptions),);
            }
          } catch (e) {
            AppLogger.dev('Error parsing server error details: $e');
          }

          await SentryService.captureException(
            InternalServerErrorException(err.requestOptions),
            extra: {
              'path': err.requestOptions.path,
              'method': err.requestOptions.method,
              'statusCode': statusCode,
              'error_type': err.type.toString(),
            },
          );
          return handler.reject(
              InternalServerErrorException(err.requestOptions),);
        }

      case DioExceptionType.cancel:
        return handler.next(err);

      case DioExceptionType.badCertificate:
        await SentryService.captureException(
          OtherException(err),
          extra: errorContext,
        );
        return handler.reject(OtherException(err));

      case DioExceptionType.unknown:
        await SentryService.captureException(
          OtherException(err),
          extra: errorContext,
        );
        return handler.reject(OtherException(err));
    }
  }
}
