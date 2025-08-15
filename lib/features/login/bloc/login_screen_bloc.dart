import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/network/auth_error.dart';
import 'package:trueme/core/services/auth/base_auth.dart';
import 'package:trueme/features/auth/domain/authentication_repository/authentication_repository_impl.dart';

part 'login_screen_bloc.freezed.dart';
part 'login_screen_event.dart';
part 'login_screen_state.dart';

@injectable
class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  LoginScreenBloc(this._baseAuth, this._authenticationRepository)
      : super(LoginScreenState.init()) {
    on<OnGoogleSignIn>(_onGoogleSignIn);
    on<OnAuthMethod>(_onAuthMethod);
    on<OnMailSignIn>(_onMailSignIn);
    on<OnAppleSignIn>(_onAppleSignIn);
  }

  final BaseAuth _baseAuth;
  final AuthenticationRepository _authenticationRepository;

  Future<void> _onGoogleSignIn(
    OnGoogleSignIn event,
    Emitter<LoginScreenState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: false,
        isSubmitLoadingGoogle: true,
      ),
    );
    try {
      final credentials = await _baseAuth.onLoginGoogle();

      if (credentials == null) {
        emit(
          state.copyWith(
            isSubmitLoadingGoogle: false,
          ),
        );
        return;
      }

      AppLogger.dev(credentials);

      await _authenticationRepository
          .loginToGetExternalToken(credentials.accessToken)
          .then(
            (result) => result.fold(
              (_) async {
                if (!emit.isDone) {
                  add(const LoginScreenEvent.onAuthMethod(AuthMethods.google));
                }
              },
              (authError) async {
                if (!emit.isDone) {
                  emit(
                    state.copyWith(
                      isSubmitLoadingGoogle: false,
                      loginEvent: const LoginEventState.onPopSign(),
                    ),
                  );
                }

                if (!emit.isDone) {
                  emit(
                    state.copyWith(
                      loginEvent: LoginEventState.showAuthError(authError),
                      isSubmitLoadingGoogle: false,
                    ),
                  );
                }
              },
            ),
          );
    } on Exception {
      AppLogger.dev('User has cancelled or no internet!');
      if (!emit.isDone) {
        emit(
          state.copyWith(
            loginEvent: const LoginEventState.onPopSign(),
            isSubmitLoadingGoogle: false,
          ),
        );
      }
    }
  }

  Future<void> _onMailSignIn(
    OnMailSignIn event,
    Emitter<LoginScreenState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: false,
        isSubmitLoadingMail: true,
      ),
    );
    try {
      final credentials = await _baseAuth.onStandardSignin();

      if (credentials == null) {
        if (!emit.isDone) {
          emit(
            state.copyWith(
              isSubmitLoadingMail: false,
            ),
          );
        }
        return;
      }

      await _authenticationRepository
          .loginToGetExternalToken(credentials.accessToken)
          .then(
            (result) => result.fold(
              (_) async {
                if (!emit.isDone) {
                  add(const LoginScreenEvent.onAuthMethod(AuthMethods.email));
                }
              },
              (authError) async {
                if (!emit.isDone) {
                  emit(
                    state.copyWith(
                      loginEvent: const LoginEventState.onPopSign(),
                      isSubmitLoadingMail: false,
                    ),
                  );
                }

                if (!emit.isDone) {
                  emit(
                    state.copyWith(
                      loginEvent: LoginEventState.showAuthError(authError),
                      isSubmitLoadingMail: false,
                    ),
                  );
                }
              },
            ),
          );
    } on Exception catch (e) {
      AppLogger.dev('User has cancelled or no internet! Error: $e');
      if (!emit.isDone) {
        emit(
          state.copyWith(
            loginEvent: const LoginEventState.onPopSign(),
            isSubmitLoadingMail: false,
          ),
        );
      }
    }
  }

  /// Apple Sign In Authentication
  Future<void> _onAppleSignIn(
    OnAppleSignIn event,
    Emitter<LoginScreenState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: false,
        isSubmitLoadingApple: true,
      ),
    );
    try {
      final credentials = await _baseAuth.onAppleSignIn();

      if (credentials == null) {
        emit(
          state.copyWith(
            isSubmitLoadingApple: false,
          ),
        );
        return;
      }

      AppLogger.dev('Apple Sign In credentials: $credentials');

      await _authenticationRepository
          .loginToGetExternalToken(credentials.accessToken)
          .then(
            (result) => result.fold(
              (_) async {
                if (!emit.isDone) {
                  add(const LoginScreenEvent.onAuthMethod(AuthMethods.apple));
                }
              },
              (authError) async {
                if (!emit.isDone) {
                  emit(
                    state.copyWith(
                      loginEvent: const LoginEventState.onPopSign(),
                      isSubmitLoadingApple: false,
                    ),
                  );
                }

                if (!emit.isDone) {
                  emit(
                    state.copyWith(
                      loginEvent: LoginEventState.showAuthError(authError),
                      isSubmitLoadingApple: false,
                    ),
                  );
                }
              },
            ),
          );
    } on Exception catch (e) {
      AppLogger.dev('Apple Sign In cancelled or error: $e');
      if (!emit.isDone) {
        emit(
          state.copyWith(
            loginEvent: const LoginEventState.onPopSign(),
            isSubmitLoadingApple: false,
          ),
        );
      }
    }
  }

  ///AuthMethods

  Future<void> _onAuthMethod(
      OnAuthMethod event, Emitter<LoginScreenState> emit,) async {
    try {
      if (!emit.isDone) {
        emit(
          state.copyWith(
            loginEvent: const LoginEventState.onNavigateToSplash(),
          ),
        );
      }
    } catch (e, stackTrace) {
      AppLogger.error('Error during login data handling: $e');
      await Sentry.captureException(e, stackTrace: stackTrace);

      if (!emit.isDone) {
        emit(
          state.copyWith(
            loginEvent: LoginEventState.showAuthError(AuthError.server()),
            isSubmitLoadingMail: false,
          ),
        );
      }
    }
  }
}
