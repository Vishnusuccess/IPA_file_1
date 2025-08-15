part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.onInit() = OnInit;
  const factory SettingsEvent.onLogout() = OnLogout;
  const factory SettingsEvent.onDeleteUser() = OnDeleteUser;
}
