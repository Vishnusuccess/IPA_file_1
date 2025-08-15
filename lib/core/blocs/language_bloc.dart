import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/core/services/language_service.dart';

part 'language_bloc.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({
    required Locale locale,
    required bool isLoading,
    required String? errorMessage,
  }) = _LanguageState;

  factory LanguageState.initial() => const LanguageState(
        locale: Locale('en'),
        isLoading: false,
        errorMessage: null,
      );
}

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.initialize() = _Initialize;

  const factory LanguageEvent.changeLanguage(AppLanguage language) =
      _ChangeLanguage;

  const factory LanguageEvent.clearError() = _ClearError;
}

@Injectable()
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc(this._languageService) : super(LanguageState.initial()) {
    on<LanguageEvent>((event, emit) async {
      await event.when(
        initialize: () async => _onInitialize(emit),
        changeLanguage: (language) async =>
            _onChangeLanguage(language, emit),
        clearError: () async => _onClearError(emit),
      );
    });
  }

  final LanguageService _languageService;

  Future<void> _onInitialize(Emitter<LanguageState> emit) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      final currentLanguage = await _languageService.getCurrentLanguage();
      emit(state.copyWith(
        locale: Locale(currentLanguage.code),
        isLoading: false,
      ),);
    } catch (e) {
      // Fallback to English in case of error
      emit(state.copyWith(
        locale: const Locale('en'),
        isLoading: false,
        errorMessage:
            'Failed to load language settings. Using English as default.',
      ),);
    }
  }

  Future<void> _onChangeLanguage(
      AppLanguage language, Emitter<LanguageState> emit,) async {
    try {
      emit(state.copyWith(isLoading: true, errorMessage: null));
      await _languageService.setLanguage(language);
      emit(state.copyWith(
        locale: Locale(language.code),
        isLoading: false,
      ),);
    } catch (e) {
      // Keep the current locale and show error message
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'Failed to change language. Please try again.',
      ),);
    }
  }

  void _onClearError(Emitter<LanguageState> emit) {
    emit(state.copyWith(errorMessage: null));
  }

  Future<AppLanguage> getCurrentAppLanguage() async {
    return _languageService.getCurrentLanguage();
  }
}
