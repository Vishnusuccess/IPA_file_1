import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'menu_screen_bloc.freezed.dart';
part 'menu_screen_event.dart';
part 'menu_screen_state.dart';

@Injectable()
class MenuScreenBloc extends Bloc<MenuScreenEvent, MenuScreenState> {
  MenuScreenBloc() : super(MenuScreenState.initial()) {
    on<OnInit>(_onInit);
    on<OnNavigateToSettings>(_onNavigateToSettings);
    on<OnNavigateToChat>(_onNavigateToChat);
    on<OnNavigateToEvents>(_onNavigateToEvents);
    on<OnNavigateToPrograms>(_onNavigateToPrograms);
  }

  Future<void> _onInit(OnInit event, Emitter<MenuScreenState> emit) async {
    emit(state.copyWith(menuEventState: const MenuEventState.loading()));

    try {
      // Initialize menu data if needed
      emit(state.copyWith(menuEventState: const MenuEventState.loaded()));
    } catch (e) {
      emit(state.copyWith(menuEventState: MenuEventState.error(e.toString())));
    }
  }

  Future<void> _onNavigateToSettings(
      OnNavigateToSettings event, Emitter<MenuScreenState> emit,) async {
    emit(state.copyWith(
        menuEventState: const MenuEventState.navigatingToSettings(),),);
    emit(state.copyWith(menuEventState: const MenuEventState.idle()));
  }

  Future<void> _onNavigateToChat(
      OnNavigateToChat event, Emitter<MenuScreenState> emit,) async {
    emit(state.copyWith(
        menuEventState: const MenuEventState.navigatingToChat(),),);
    emit(state.copyWith(menuEventState: const MenuEventState.idle()));
  }

  Future<void> _onNavigateToEvents(
      OnNavigateToEvents event, Emitter<MenuScreenState> emit,) async {
    emit(state.copyWith(
        menuEventState: const MenuEventState.navigatingToEvents(),),);
    emit(state.copyWith(menuEventState: const MenuEventState.idle()));
  }

  Future<void> _onNavigateToPrograms(
      OnNavigateToPrograms event, Emitter<MenuScreenState> emit,) async {
    emit(state.copyWith(
        menuEventState: const MenuEventState.navigatingToPrograms(),),);
    emit(state.copyWith(menuEventState: const MenuEventState.idle()));
  }
}
