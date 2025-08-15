part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState({
    required bool isLoggedIn,
    required bool forceUpdate,
  }) = _AuthorizationState;

  factory AuthorizationState.initial() => const AuthorizationState(
        isLoggedIn: true,
        forceUpdate: false,
      );
}
