import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/features/exercise/data/models/answer_block_models.dart';
import 'package:trueme/features/exercise/data/models/answer_exercise_model.dart';

final Map<String, List<String>> _globalAnswerBlockValues = {};

class AnswerBlocksWidget extends StatefulWidget {

  const AnswerBlocksWidget({
    required this.answerExercise, super.key,
  });
  final AnswerExerciseModel answerExercise;

  @override
  State<AnswerBlocksWidget> createState() => _AnswerBlocksWidgetState();
}

class _AnswerBlocksWidgetState extends State<AnswerBlocksWidget> {
  final Map<String, TextEditingController> _controllers = {};
  final Map<String, String> _inputValues = {};

  @override
  void initState() {
    super.initState();
    _initializeControllers();
  }

  void _initializeControllers() {
    if (widget.answerExercise.answerBlocks != null) {
      for (var i = 0; i < widget.answerExercise.answerBlocks!.length; i++) {
        final block = widget.answerExercise.answerBlocks![i];
        if (block is InputAnswerBlock) {
          final controller = TextEditingController();
          final key = '${block.name}_$i';
          _controllers[key] = controller;

          controller.addListener(() {
            _inputValues[key] = controller.text;
            _updateAnswersInBloc();
          });
        }
      }
    }
  }

  void _updateAnswersInBloc() {
    _updateGlobalAnswerValues();
  }

  List<String> getInputValues() {
    return _inputValues.values.toList();
  }

  void _updateGlobalAnswerValues() {
    _globalAnswerBlockValues[widget.answerExercise.exerciseId] =
        _inputValues.values.toList();
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.answerExercise.answerBlocks == null ||
        widget.answerExercise.answerBlocks!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: widget.answerExercise.answerBlocks!.length,
              itemBuilder: (context, index) {
                final block = widget.answerExercise.answerBlocks![index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: Spacing.m),
                  child: _buildBlock(block, index),
                );
              },
            ),
          ),
          _buildExerciseHint(),
        ],
      ),
    );
  }

  Widget _buildBlock(AnswerBlockBase block, int index) {
    switch (block.elementType) {
      case AnswerBlockType.text:
        return _buildTextBlock(block as TextAnswerBlock);
      case AnswerBlockType.input:
        return _buildInputBlock(block as InputAnswerBlock, index);
    }
  }

  Widget _buildTextBlock(TextAnswerBlock block) {
    return Text(
      block.question,
      style: const TextStyle(
        fontFamily: 'Rubik',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.3,
        letterSpacing: -0.16,
        color: Colors.white,
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildInputBlock(InputAnswerBlock block, int index) {
    final key = '${block.name}_$index';
    final controller = _controllers[key];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (block.name.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: Spacing.xs),
            child: Text(
              block.name,
              style: const TextStyle(
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 1.3,
                letterSpacing: -0.16,
                color: Colors.white,
              ),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF2D2C30),
            borderRadius: BorderRadius.circular(BorderRadiusSize.m),
            border: Border.all(color: const Color(0xFF7C7C7F)),
          ),
          child: TextField(
            controller: controller,
            maxLines: 4,
            minLines: 3,
            decoration: InputDecoration(
              hintText: block.placeholder,
              hintStyle: const TextStyle(
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 1.3,
                letterSpacing: -0.16,
                color: Color(0xFF7C7C7F),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(BorderRadiusSize.m),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.all(Spacing.m),
              filled: false,
            ),
            style: const TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              height: 1.3,
              letterSpacing: -0.16,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildExerciseHint() {
    if (widget.answerExercise.exerciseHint == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(top: Spacing.m),
      child: Text(
        widget.answerExercise.exerciseHint!,
        style: const TextStyle(
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 1.3,
          letterSpacing: -0.14,
          color: Color(0xFF7C7C7F),
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

List<String> getAnswerBlockValues(String exerciseId) {
  return _globalAnswerBlockValues[exerciseId] ?? [];
}

void clearAnswerBlockValues(String exerciseId) {
  _globalAnswerBlockValues.remove(exerciseId);
}
