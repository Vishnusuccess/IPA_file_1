import 'package:injectable/injectable.dart';
import 'package:trueme/features/chatbot/data/models/chat_stage_response_model.dart';

@singleton
class StageService {
  ChatStage _currentStage = ChatStage.onboardingIntro;
  ChatStage? _hintStage;

  ChatStage get currentStage => _currentStage;
  ChatStage? get hintStage => _hintStage;
  ChatStage get effectiveStage => _hintStage ?? _currentStage;

  // ignore: use_setters_to_change_properties
  void updateStage(ChatStage stage) {
    _currentStage = stage;
  }

  void updateStageFromString(String stageString) {
    _currentStage = ChatStage.fromString(stageString);
  }

  void updateHintStageFromString(String? hintString) {
    if (hintString != null && hintString.isNotEmpty) {
      _hintStage = ChatStage.fromString(hintString);
    }
  }

  void clearHintStage() {
    _hintStage = null;
  }

  bool get shouldShowProgressButton =>
      _currentStage == ChatStage.periodicCheckinEmotion &&
      _hintStage == ChatStage.periodicCheckinEmotion;

  bool get shouldShowChatIcon => shouldShowProgressButton;
}
