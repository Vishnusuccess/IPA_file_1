import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/services/language_service.dart';
import 'package:trueme/flavors.dart';

@injectable
class BaseAuth {
  BaseAuth(this._languageService);

  late Auth0 auth0;
  final LanguageService _languageService;

  // Helper method to get current locale from app settings
  Future<String> _getAuthLocale() async {
    final currentLanguage = await _languageService.getCurrentLanguage();
    return currentLanguage.apiCode; // 'pl' or 'en'
  }

  Future<Credentials?> onStandardSignUp() async {
    final auth0ClientID = await F.apiKeys.then(
      (set) => set.auth0ClientID,
    );
    final auth0Domain = await F.apiKeys.then(
      (set) => set.auth0Domain,
    );

    auth0 = Auth0(auth0Domain, auth0ClientID);

    try {
      final locale = await _getAuthLocale();
      final credentials = await auth0
          .webAuthentication(
        scheme: 'trueme',
        useCredentialsManager: false,
      )
          .login(
        useEphemeralSession: true,
        parameters: {
          'screen_hint': 'signup',
          'ui_locales': locale,
          'lang': locale,
          'locale': locale,
        },
      );
      return credentials;
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('Auth: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setTag('auth', 'signup');
        },
      );
      AppLogger.dev(e);
      return null;
    }
  }

  Future<Credentials?> onStandardSignin() async {
    final auth0ClientID = await F.apiKeys.then(
      (set) => set.auth0ClientID,
    );
    final auth0Domain = await F.apiKeys.then(
      (set) => set.auth0Domain,
    );

    final auth0Audience = await F.apiKeys.then(
      (set) => set.auth0Audience,
    );

    auth0 = Auth0(auth0Domain, auth0ClientID);

    try {
      final locale = await _getAuthLocale();
      final credentials = await auth0
          .webAuthentication(
        scheme: 'trueme',
        useCredentialsManager: false,
      )
          .login(
        useEphemeralSession: true,
        parameters: {
          'action': 'login',
          'prompt': 'login',
          'audience': auth0Audience,
          'scope': 'openid profile email',
          'ui_locales': locale,
          'lang': locale,
          'locale': locale,
        },
      );
      return credentials;
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('Auth: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setTag('auth', 'form');
        },
      );
      AppLogger.dev(e);
      return null;
    }
  }

  Future<Credentials?> onLoginGoogle() async {
    final auth0ClientID = await F.apiKeys.then(
      (set) => set.auth0ClientID,
    );
    final auth0Domain = await F.apiKeys.then(
      (set) => set.auth0Domain,
    );

    final auth0Audience = await F.apiKeys.then(
      (set) => set.auth0Audience,
    );

    auth0 = Auth0(auth0Domain, auth0ClientID);

    try {
      final locale = await _getAuthLocale();
      final credentials = await auth0
          .webAuthentication(
        scheme: 'trueme',
      )
          .login(
        useEphemeralSession: true,
        parameters: {
          'connection': 'google-oauth2',
          'audience': auth0Audience,
          'scope': 'openid profile email',
          'ui_locales': locale,
        },
      );
      return credentials;
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('Auth: Unexpected error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setTag('auth', 'google');
        },
      );
      AppLogger.dev(e);
      return null;
    }
  }

  /// Auth0 Apple Sign In (iOS)
  /// Uses Apple's native Sign in with Apple through Auth0
  Future<Credentials?> onAppleSignIn() async {
    final auth0ClientID = await F.apiKeys.then(
      (set) => set.auth0ClientID,
    );
    final auth0Domain = await F.apiKeys.then(
      (set) => set.auth0Domain,
    );

    final auth0Audience = await F.apiKeys.then(
      (set) => set.auth0Audience,
    );

    auth0 = Auth0(auth0Domain, auth0ClientID);

    try {
      final locale = await _getAuthLocale();
      final credentials = await auth0.webAuthentication().login(
        useEphemeralSession: true,
        parameters: {
          'connection': 'apple',
          'audience': auth0Audience,
          'scope': 'openid profile email',
          'ui_locales': locale,
        },
      );
      return credentials;
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('Auth: Apple Sign In error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope..setTag('auth', 'apple')
          ..setTag('platform', 'ios');
        },
      );
      AppLogger.dev('Apple Sign In Error: $e');
      return null;
    }
  }

  /// Logout method for clearing Auth0 session
  Future<void> logout() async {
    try {
      await auth0.webAuthentication().logout();
    } on Exception catch (e, stackTrace) {
      await Sentry.captureException(
        Exception('Auth: Logout error - $e'),
        stackTrace: stackTrace,
        withScope: (scope) {
          scope.setTag('auth', 'logout');
        },
      );
      AppLogger.dev('Logout Error: $e');
    }
  }
}
