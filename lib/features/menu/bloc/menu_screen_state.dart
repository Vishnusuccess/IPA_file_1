part of 'menu_screen_bloc.dart';

@freezed
class MenuScreenState with _$MenuScreenState {
  factory MenuScreenState({
    required MenuEventState menuEventState,
  }) = _MenuScreenState;

  factory MenuScreenState.initial() => MenuScreenState(
        menuEventState: const MenuEventState.idle(),
      );
}

@freezed
class MenuEventState with _$MenuEventState {
  const factory MenuEventState.idle() = _Idle;
  const factory MenuEventState.loading() = _Loading;
  const factory MenuEventState.loaded() = _Loaded;
  const factory MenuEventState.navigatingToSettings() = _NavigatingToSettings;
  const factory MenuEventState.navigatingToChat() = _NavigatingToChat;
  const factory MenuEventState.navigatingToEvents() = _NavigatingToEvents;
  const factory MenuEventState.navigatingToPrograms() = _NavigatingToPrograms;
  const factory MenuEventState.error(String message) = _Error;
}
