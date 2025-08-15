import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/core/services/mixpanel_service.dart';
import 'package:trueme/features/auth/data/user_token_repository.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

@Singleton()
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc(this._userTokenRepository)
      : super(AuthorizationState.initial()) {
    on<OnLogin>(_onLogin);
    on<OnLogout>(_onLogout);
    on<OnForceUpdate>(_onForceUpdate);
  }

  final UserTokenRepository _userTokenRepository;

  Future<void> _onLogin(
    OnLogin event,
    Emitter<AuthorizationState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoggedIn: true,
      ),
    );
  }

  Future<void> _onLogout(
    OnLogout event,
    Emitter<AuthorizationState> emit,
  ) async {
    // Śledzenie wylogowania w Mixpanel
    await MixpanelService.track('User Logout');

    // Clear stored tokens
    await _userTokenRepository.removeUserToken();
    await _userTokenRepository.removeRefreshToken();

    // Reset Mixpanel user session
    await MixpanelService.reset();

    emit(state.copyWith(isLoggedIn: false));
  }

  Future<void> _onForceUpdate(
    OnForceUpdate event,
    Emitter<AuthorizationState> emit,
  ) async {
    emit(state.copyWith(forceUpdate: true));
  }
}
