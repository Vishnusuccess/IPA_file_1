part of 'login_screen_bloc.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState({
    required bool isLoading,
    required LoginEventState loginEvent,
    required bool isSubmitLoadingGoogle,
    required bool isSubmitLoadingMail,
    required bool isSubmitLoadingApple,
  }) = _LoginScreenState;

  factory LoginScreenState.init() => const LoginScreenState(
        isLoading: false,
        loginEvent: LoginEventState.idle(),
        isSubmitLoadingGoogle: false,
        isSubmitLoadingMail: false,
        isSubmitLoadingApple: false,
      );
}

@freezed
class LoginEventState with _$LoginEventState {
  const factory LoginEventState.idle() = Idle;
  const factory LoginEventState.onNavigateToSplash() = OnNavigateToSplash;
  const factory LoginEventState.onPopSign() = OnPopSign;
  const factory LoginEventState.showAuthError(AuthError error) = ShowAuthError;
}
