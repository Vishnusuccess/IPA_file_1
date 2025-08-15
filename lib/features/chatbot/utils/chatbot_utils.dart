enum ChatEndpointUtils {
  init,
  starter,
  calmness,
  emotions,
  finalChat,
}

enum ChatFlowStage {
  init,
  starter,
  calmness,
  emotions,
  finalChat,
  completed,
}

extension ChatFlowStageExtension on ChatFlowStage {
  ChatEndpointUtils get endpoint {
    switch (this) {
      case ChatFlowStage.init:
        return ChatEndpointUtils.init;
      case ChatFlowStage.starter:
        return ChatEndpointUtils.starter;
      case ChatFlowStage.calmness:
        return ChatEndpointUtils.calmness;
      case ChatFlowStage.emotions:
        return ChatEndpointUtils.emotions;
      case ChatFlowStage.finalChat:
        return ChatEndpointUtils.finalChat;
      case ChatFlowStage.completed:
        return ChatEndpointUtils.finalChat;
    }
  }

  ChatFlowStage? get nextStage {
    switch (this) {
      case ChatFlowStage.init:
        return ChatFlowStage.starter;
      case ChatFlowStage.starter:
        return ChatFlowStage.calmness;
      case ChatFlowStage.calmness:
        return ChatFlowStage.emotions;
      case ChatFlowStage.emotions:
        return ChatFlowStage.finalChat;
      case ChatFlowStage.finalChat:
        return ChatFlowStage.completed;
      case ChatFlowStage.completed:
        return null;
    }
  }

  String get displayName {
    switch (this) {
      case ChatFlowStage.init:
        return 'Initial Chat';
      case ChatFlowStage.starter:
        return 'About TrueMe';
      case ChatFlowStage.calmness:
        return 'Calmness Exercise';
      case ChatFlowStage.emotions:
        return 'Emotions Exercise';
      case ChatFlowStage.finalChat:
        return 'Final Chat';
      case ChatFlowStage.completed:
        return 'Completed';
    }
  }
}

extension ChatEndpointExtension on ChatEndpointUtils {
  String get path {
    switch (this) {
      case ChatEndpointUtils.init:
        return '/chat/init';
      case ChatEndpointUtils.starter:
        return '/chat/starter';
      case ChatEndpointUtils.calmness:
        return '/chat/calmness';
      case ChatEndpointUtils.emotions:
        return '/chat/emotions';
      case ChatEndpointUtils.finalChat:
        return '/chat';
    }
  }

  String get program {
    switch (this) {
      case ChatEndpointUtils.init:
        return 'Init';
      case ChatEndpointUtils.starter:
        return 'Starter';
      case ChatEndpointUtils.calmness:
        return 'Calmness';
      case ChatEndpointUtils.emotions:
        return 'Emotions';
      case ChatEndpointUtils.finalChat:
        return 'FinalChat';
    }
  }
}

class ChatbotRouteParams {
  ChatbotRouteParams({
    required this.chatEndpointUtils,
    this.shouldSendEmotionInfo = false,
    this.initialMessage,
    this.skipInit = false,
    this.cameFromExercise = false,
  });

  final ChatEndpointUtils chatEndpointUtils;
  final bool shouldSendEmotionInfo;
  final String? initialMessage;
  final bool skipInit;
  final bool cameFromExercise;
}
