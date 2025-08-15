part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenState with _$SplashScreenState {
  const factory SplashScreenState({
    required String stateId,
    required bool isLoading,
    required bool isError,
    required ProgressStageModel? progressStageModel,
    required SplashScreenEventState splashScreenEvent,
  }) = _SplashScreenState;

  factory SplashScreenState.init() => SplashScreenState(
        stateId: UniqueKey().toString(),
        isLoading: true,
        isError: false,
        progressStageModel: null,
        splashScreenEvent: const SplashScreenEventState.idle(),
      );
}

@freezed
class SplashScreenEventState with _$SplashScreenEventState {
  const factory SplashScreenEventState.idle() = _Idle;

  const factory SplashScreenEventState.onMoveToLoginPage() = _OnMoveToLoginPage;

  const factory SplashScreenEventState.onMoveToChatPage() = _OnMoveToChatPage;

  const factory SplashScreenEventState.onNavigateToStage(String stage) =
      _OnNavigateToStage;
}
