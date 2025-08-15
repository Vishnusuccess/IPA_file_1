import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/presentation/widgets/widgets.dart';
import 'package:trueme/features/exercise/bloc/exercise_page_bloc.dart';

class MultiSelectAnswerGrid extends StatelessWidget {
  const MultiSelectAnswerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExercisePageBloc, ExercisePageState>(
      builder: (context, state) {
        return Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 16,
              childAspectRatio: 3.5,
            ),
            itemCount: state.potentialAnswers.length,
            itemBuilder: (context, index) {
              final answer = state.potentialAnswers[index];
              final isChecked = state.selectedAnswers.contains(answer);

              return AppCheckBox(
                label: answer,
                isChecked: isChecked,
                onChanged: (_) {
                  context.read<ExercisePageBloc>().add(
                        ExercisePageEvent.onCheckAnswer(answer),
                      );
                },
              );
            },
          ),
        );
      },
    );
  }
}
