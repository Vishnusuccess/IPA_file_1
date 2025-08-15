part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    required String version,
    required String trueMeEnvDisplay,
    required String trueMeEndpointUrl,
    required SettingsEventState settingStateEvent,
    required String userId,
  }) = _SettingsState;

  factory SettingsState.initial() => SettingsState(
        version: '',
        trueMeEndpointUrl: '',
        trueMeEnvDisplay: '',
        settingStateEvent: const SettingsEventState.idle(),
        userId: '',
      );
}

@freezed
class SettingsEventState with _$SettingsEventState {
  const factory SettingsEventState.idle() = _Idle;
  const factory SettingsEventState.onLogout() = _OnLogoutEvent;
  const factory SettingsEventState.onDeleteAccount() = _OnDeleteAccountEvent;
}
