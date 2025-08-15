import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:trueme/core/logger/logger.dart';
import 'package:trueme/core/services/stage_service.dart';
import 'package:trueme/features/auth/data/user_token_repository.dart';
import 'package:trueme/features/auth/domain/authentication_repository/authentication_repository_impl.dart';
import 'package:trueme/features/authorization/authorization_bloc.dart';
import 'package:trueme/features/chatbot/data/chat_service.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';
import 'package:trueme/features/splash_screen/data/model/progress_stage_model.dart';
import 'package:url_launcher/url_launcher.dart';

part 'splash_screen_bloc.freezed.dart';
part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

@injectable
class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc(
    this._authenticationRepository,
    this._userTokenRepository,
    this._chatService,
    this._stageService,
    this._authorizationBloc,
  ) : super(SplashScreenState.init()) {
    on<_OnInit>(_onInit);
    on<_OnClickLogoutButton>(_onClickLogoutButton);
    on<_OnCheckChatStatus>(_onCheckChatStatus);

    ///Error Section
    on<_OnClickTryAgainButton>(_onClickTryAgainButton);
    on<_OnClickContactSupport>(_onClickContactSupport);
  }

  final UserTokenRepository _userTokenRepository;
  final AuthenticationRepository _authenticationRepository;
  final ChatService _chatService;
  final StageService _stageService;
  final AuthorizationBloc _authorizationBloc;

  Future<void> _onInit(_OnInit event, Emitter<SplashScreenState> emit) async {
    try {
      AppLogger.dev('SplashScreen initialization started');

      final refreshToken = await _userTokenRepository.getRefreshToken();
      if (refreshToken == null) {
        AppLogger.dev('No refresh token found, moving to login page');
        emit(state.copyWith(
            splashScreenEvent:
                const SplashScreenEventState.onMoveToLoginPage(),),);
        emit(state.copyWith(
            splashScreenEvent: const SplashScreenEventState.idle(),),);
        return;
      }

      final refreshResult =
          await _authenticationRepository.exchangeRefreshToken();

      if (refreshResult.isRight()) {
        AppLogger.dev('Refresh token failed, moving to login page');
        await _userTokenRepository.removeUserToken();
        await _userTokenRepository.removeRefreshToken();
        emit(state.copyWith(
            splashScreenEvent:
                const SplashScreenEventState.onMoveToLoginPage(),),);
        emit(state.copyWith(
            splashScreenEvent: const SplashScreenEventState.idle(),),);
        return;
      }

      AppLogger.dev(
          'Refresh token succeeded, continuing with app initialization',);

      // Check chat status to determine where to navigate
      add(const SplashScreenEvent.onCheckChatStatus());

      return;
    } catch (e, stackTrace) {
      AppLogger.dev('Unexpected error in _onInit: $e');
      await Sentry.captureException(
        Exception(
            'SplashScreenInitException: Error during initialization - $e',),
        stackTrace: stackTrace,
      );
      emit(state.copyWith(isError: true, isLoading: false));
    }
  }

  Future<void> _onClickLogoutButton(
    _OnClickLogoutButton event,
    Emitter<SplashScreenState> emit,
  ) async {
    // Trigger logout through AuthorizationBloc
    _authorizationBloc.add(const AuthorizationEvent.onLogout());
  }

  Future<void> _onCheckChatStatus(
    _OnCheckChatStatus event,
    Emitter<SplashScreenState> emit,
  ) async {
    try {
      AppLogger.dev('Splash: checking /status to determine landing stage');

      final statusRes = await _chatService.checkChatStatus(); // GET /status

      await statusRes.fold(
        (status) async {
          final stage = ChatStage.fromString(status.stage);
          final hintStage = status.hintStage != null
              ? ChatStage.fromString(status.hintStage!)
              : null;

          AppLogger.dev(
              'Status: stage=${stage.value}, hint=${status.hintStage}',);

          // Keep StageService in sync (optional)
          _stageService..updateStage(stage)
          ..updateHintStageFromString(status.hintStage);

          // Case A: already periodic -> go straight to Exercise
          if (stage == ChatStage.periodicCheckinEmotion) {
            emit(state.copyWith(
              splashScreenEvent: const SplashScreenEventState.onNavigateToStage(
                  'periodic_checkin_emotion',),
            ),);
            emit(state.copyWith(
                splashScreenEvent: const SplashScreenEventState.idle(),),);
            return;
          }

          // Case B: stage is not periodic,
          // but hint says it's due -> trigger it now
          if (hintStage == ChatStage.periodicCheckinEmotion) {
            AppLogger.dev(
                'Hint says periodic is due. Triggering start from Splash…',);
            // Send the special message to advance backend state
            final triggerRes = await _chatService.sendChatRequest(
                message: '__start_periodic_checkin__',);

            triggerRes.fold(
              (_) {
                // After triggering, route straight to Exercise
                emit(state.copyWith(
                  splashScreenEvent:
                      const SplashScreenEventState.onNavigateToStage(
                          'periodic_checkin_emotion',),
                ),);
                emit(state.copyWith(
                    splashScreenEvent: const SplashScreenEventState.idle(),),);
              },
              (err) {
                AppLogger.dev('Failed to trigger periodic start: $err');
                // Fallback to chat if trigger fails
                emit(state.copyWith(
                  splashScreenEvent:
                      const SplashScreenEventState.onMoveToChatPage(),
                ),);
                emit(state.copyWith(
                    splashScreenEvent: const SplashScreenEventState.idle(),),);
              },
            );
            return;
          }

          // Case C: neither stage nor hint says periodic ->
          // go to chat (or StageFlowManager)
          emit(state.copyWith(
            splashScreenEvent:
                SplashScreenEventState.onNavigateToStage(stage.value),
          ),);
          emit(state.copyWith(
              splashScreenEvent: const SplashScreenEventState.idle(),),);
        },
        (error) {
          AppLogger.dev('Status failed: $error');
          emit(state.copyWith(
            splashScreenEvent: const SplashScreenEventState.onMoveToChatPage(),
          ),);
          emit(state.copyWith(
              splashScreenEvent: const SplashScreenEventState.idle(),),);
        },
      );
    } catch (e, st) {
      AppLogger.dev('Unexpected error in Splash status: $e');
      await Sentry.captureException(
        Exception('SplashStatusException: $e'),
        stackTrace: st,
      );
      emit(state.copyWith(
        splashScreenEvent: const SplashScreenEventState.onMoveToChatPage(),
      ),);
      emit(state.copyWith(
          splashScreenEvent: const SplashScreenEventState.idle(),),);
    }
  }

  ///Error

  Future<void> _onClickTryAgainButton(
      _OnClickTryAgainButton event, Emitter<SplashScreenState> emit,) async {
    emit(state.copyWith(isLoading: true, isError: false));
    add(const SplashScreenEvent.onInit());
  }

  Future<void> _onClickContactSupport(
      _OnClickContactSupport event, Emitter<SplashScreenState> emit,) async {
    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'hello@trueme.space',
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      AppLogger.dev("Can't open email app.");
    }
  }
}
