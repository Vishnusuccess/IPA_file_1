import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:result_dart/result_dart.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/network/rest_services.dart';
import 'package:trueme/features/user/data/models/fetch_user_exception.dart';
import 'package:trueme/features/user/data/models/trueme_user.dart';

@injectable
class UserRepository {
  UserRepository();

  static const userEndpoint = '/api/User';
  static const setLanguageEndpoint = '/user/set-language';

  Future<Result<TruemeUser, FetchUserException>> fetchUser() async {
    try {
      final response = await Api().backendDio.get<Map<String, dynamic>>(
        userEndpoint,
      );

      final data = response.data;
      if (data != null) {
        final user = TruemeUser.fromJson(data);
        return Result.success(user);
      } else {
        return const Result.failure(InvalidResponseCodeFetchUserException());
      }
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('UserFetchException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) => scope
          ..setContexts('http_error', {
            'status_code': e.response?.statusCode,
            'response_data': e.response?.data?.toString(),
          })
          ..setTag('endpoint', userEndpoint),
      );
      return Result.failure(
        FetchUserException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('UserFetchException: Unexpected error - $e'),
        stackTrace: stackTrace,
      );
      return const Result.failure(UnknownFetchUserException());
    }
  }

  Future<Result<Unit, FetchUserException>> setUserLanguage(
      String languageCode,
      ) async {
    try {
      await Api().backendDio.post<Map<String, dynamic>>(
        setLanguageEndpoint,
        data: {
          'lang': languageCode,
        },
      );
      return const Result.success(unit);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('SetUserLanguageException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) => scope
          ..setContexts('http_error', {
            'status_code': e.response?.statusCode,
            'response_data': e.response?.data?.toString(),
            'language_code': languageCode,
          })
          ..setTag('endpoint', setLanguageEndpoint),
      );
      return Result.failure(
        FetchUserException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('SetUserLanguageException: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) => scope
          ..setContexts('request_data', {
            'language_code': languageCode,
          })
          ..setTag('endpoint', setLanguageEndpoint),
      );
      return const Result.failure(UnknownFetchUserException());
    }
  }

  Future<Result<Unit, FetchUserException>> putUser() async {
    try {
      await Api().backendDio.put<Map<String, dynamic>>(
        userEndpoint,
      );
      return const Result.success(unit);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('UserUpdateException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) => scope
          ..setContexts('http_error', {
            'status_code': e.response?.statusCode,
            'response_data': e.response?.data?.toString(),
          })
          ..setTag('endpoint', userEndpoint),
      );
      return Result.failure(
        FetchUserException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('UserUpdateException: Unexpected error - $e'),
        stackTrace: stackTrace,
      );
      return const Result.failure(UnknownFetchUserException());
    }
  }

  Future<Result<Unit, FetchUserException>> deleteUser() async {
    try {
      await Api().backendDio.delete<Map<String, dynamic>>(
        userEndpoint,
      );
      return const Result.success(unit);
    } on DioException catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('UserDeleteException: DioError - ${e.message}'),
        stackTrace: stackTrace,
        withScope: (scope) => scope
          ..setContexts('http_error', {
            'status_code': e.response?.statusCode,
            'response_data': e.response?.data?.toString(),
          })
          ..setTag('endpoint', userEndpoint),
      );
      return Result.failure(
        FetchUserException.tryParse(e.response?.statusCode),
      );
    } catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('UserDeleteException: Unexpected error - $e'),
        stackTrace: stackTrace,
      );
      return const Result.failure(UnknownFetchUserException());
    }
  }
}
