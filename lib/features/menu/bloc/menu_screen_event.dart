part of 'menu_screen_bloc.dart';

@freezed
class MenuScreenEvent with _$MenuScreenEvent {
  const factory MenuScreenEvent.onInit() = OnInit;
  const factory MenuScreenEvent.onNavigateToSettings() = OnNavigateToSettings;
  const factory MenuScreenEvent.onNavigateToChat() = OnNavigateToChat;
  const factory MenuScreenEvent.onNavigateToEvents() = OnNavigateToEvents;
  const factory MenuScreenEvent.onNavigateToPrograms() = OnNavigateToPrograms;
}
