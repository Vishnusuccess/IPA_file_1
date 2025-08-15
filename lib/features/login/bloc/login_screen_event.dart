part of 'login_screen_bloc.dart';

@freezed
class LoginScreenEvent with _$LoginScreenEvent {
  const factory LoginScreenEvent.onLogin() = OnLogin;

  const factory LoginScreenEvent.onGoogleSignIn() = OnGoogleSignIn;

  const factory LoginScreenEvent.onAuthMethod(AuthMethods loginMethod) =
      OnAuthMethod;

  const factory LoginScreenEvent.onMailSignIn() = OnMailSignIn;

  const factory LoginScreenEvent.onAppleSignIn() = OnAppleSignIn;
}

enum AuthMethods {
  google,
  email,
  apple;
}
