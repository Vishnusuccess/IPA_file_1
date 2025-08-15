import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/core/constants/shared_preferenses_keys.dart';
import 'package:trueme/core/services/app_version_service.dart';
import 'package:trueme/core/services/shared_preferences_service.dart';
import 'package:trueme/features/auth/data/user_token_repository.dart';
import 'package:trueme/features/user/data/user_repository.dart';
import 'package:trueme/flavors.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@Injectable()
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(
    this._userRepository,
    this._appVersionService,
    this._sharedPreferencesService,
    this._userTokenRepository,
  ) : super(SettingsState.initial()) {
    on<OnDeleteUser>(_onDeleteUser);
    on<OnLogout>(_onLogout);
    on<OnInit>(_onInit);
  }

  final UserRepository _userRepository;
  final AppVersionService _appVersionService;
  final SharedPreferencesService _sharedPreferencesService;
  final UserTokenRepository _userTokenRepository;

  Future<void> _onInit(OnInit event, Emitter<SettingsState> emit) async {
    // Get app version
    final version = await _appVersionService.getVersion();

    // Get user ID from shared preferences
    final userId = _sharedPreferencesService
            .getString(SharedPreferencesKeys.userId) ??
        '';

    emit(
      state.copyWith(
        version: version,
        userId: userId,
        trueMeEndpointUrl: F.backendUrl,
        trueMeEnvDisplay: F.title,
      ),
    );
  }

  Future<void> _onLogout(OnLogout event, Emitter<SettingsState> emit) async {
    // Clear stored tokens
    await _userTokenRepository.removeUserToken();
    await _userTokenRepository.removeRefreshToken();
    emit(
        state.copyWith(settingStateEvent:
        const SettingsEventState.onLogout(),),);
  }

  Future<void> _onDeleteUser(
    OnDeleteUser event,
    Emitter<SettingsState> emit,
  ) async {
    final result = await _userRepository.deleteUser();
    await result.fold(
      (_) async {
        emit(
          state.copyWith(
            settingStateEvent: const SettingsEventState.onDeleteAccount(),
          ),
        );
      },
      (_) async => null,
    );
  }
}
