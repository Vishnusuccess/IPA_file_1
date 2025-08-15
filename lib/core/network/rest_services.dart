import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/core/network/custom_queued_interceptors_wrapper.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/core/services/language_service.dart';
import 'package:trueme/features/auth/data/user_token_repository.dart';
import 'package:trueme/features/auth/domain/authentication_repository/authentication_repository_impl.dart';
import 'package:trueme/features/authorization/authorization_bloc.dart';
import 'package:trueme/flavors.dart';

@lazySingleton
class Api {
  final backendDio = createDio(
    baseUrl: F.backendUrl,
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: '*/*',
      HttpHeaders.acceptEncodingHeader: 'gzip, deflate, br',
      HttpHeaders.connectionHeader: 'keep-alive',
    },
  );

  static Dio createDio({
    required String baseUrl,
    Map<String, dynamic>? headers,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveTimeout: const Duration(seconds: 10),
        connectTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
        headers: headers,
      ),
    );

    dio.interceptors.addAll([
      CustomQueuedInterceptorsWrapper(
        dio: dio,
        userTokenRepository: getIt<UserTokenRepository>(),
        authorizationBloc: getIt<AuthorizationBloc>(),
        authenticationRepository: getIt<AuthenticationRepository>(),
        languageService: getIt<LanguageService>(),
      ),
    ]);

    return dio;
  }
}
