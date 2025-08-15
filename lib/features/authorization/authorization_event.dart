part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.onLogin() = OnLogin;
  const factory AuthorizationEvent.onLogout() = OnLogout;
  const factory AuthorizationEvent.onCleanData() = OnCleanData;
  const factory AuthorizationEvent.onForceUpdate() = OnForceUpdate;
}
