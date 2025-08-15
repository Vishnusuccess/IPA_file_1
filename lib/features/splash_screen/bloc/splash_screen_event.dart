part of 'splash_screen_bloc.dart';

@freezed
class SplashScreenEvent with _$SplashScreenEvent {
  const factory SplashScreenEvent.onInit() = _OnInit;

  const factory SplashScreenEvent.onStartProgramProgress() =
      _OnStartProgramProgress;

  const factory SplashScreenEvent.onFetchProgramProgressData() =
      _OnFetchProgramProgressData;

  const factory SplashScreenEvent.onCheckChatStatus() = _OnCheckChatStatus;

  const factory SplashScreenEvent.onClickTryAgainButton() =
      _OnClickTryAgainButton;

  const factory SplashScreenEvent.onClickLogoutButton() = _OnClickLogoutButton;

  const factory SplashScreenEvent.onClickContactSupportButton() =
      _OnClickContactSupport;
}
