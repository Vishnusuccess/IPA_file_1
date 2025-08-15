import 'package:equatable/equatable.dart';

enum AnswerBlockType { text, input }

abstract class AnswerBlockBase extends Equatable {
  const AnswerBlockBase({
    required this.elementType,
  });

  factory AnswerBlockBase.fromJson(Map<String, dynamic> json) {
    final elementTypeStr = json['elementType'] as String;
    final elementType = AnswerBlockType.values.firstWhere(
      (e) => e.name == elementTypeStr,
    );

    switch (elementType) {
      case AnswerBlockType.text:
        return TextAnswerBlock.fromJson(json);
      case AnswerBlockType.input:
        return InputAnswerBlock.fromJson(json);
    }
  }

  final AnswerBlockType elementType;

  Map<String, dynamic> toJson();
}

class TextAnswerBlock extends AnswerBlockBase {
  const TextAnswerBlock({
    required this.question,
    required super.elementType,
  });

  factory TextAnswerBlock.fromJson(Map<String, dynamic> json) {
    return TextAnswerBlock(
      question: json['question'] as String,
      elementType: AnswerBlockType.values.firstWhere(
        (e) => e.name == json['elementType'],
      ),
    );
  }

  final String question;

  @override
  Map<String, dynamic> toJson() => {
        'question': question,
        'elementType': elementType.name,
      };

  @override
  List<Object?> get props => [question, elementType];
}

class InputAnswerBlock extends AnswerBlockBase {
  const InputAnswerBlock({
    required this.name,
    required this.placeholder,
    required super.elementType,
  });

  factory InputAnswerBlock.fromJson(Map<String, dynamic> json) {
    return InputAnswerBlock(
      name: json['name'] as String,
      placeholder: json['placeholder'] as String,
      elementType: AnswerBlockType.values.firstWhere(
        (e) => e.name == json['elementType'],
      ),
    );
  }

  final String name;
  final String placeholder;

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'placeholder': placeholder,
        'elementType': elementType.name,
      };

  @override
  List<Object?> get props => [name, placeholder, elementType];
}
