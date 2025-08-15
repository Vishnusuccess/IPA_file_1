import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trueme/core/design/design.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    required this.title,
    required this.leftLabel,
    required this.rightLabel,
    required this.onRatingChanged,
    super.key,
  });

  final String title;
  final String leftLabel;
  final String rightLabel;
  final void Function(int) onRatingChanged;

  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  int selectedStars = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.m),
      decoration: BoxDecoration(
        color: AppColors.primaryGrey7,
        borderRadius: BorderRadius.circular(BorderRadiusSize.l),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 280,
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: AppStyles.text16pxMedium.copyWith(
                color: AppColors.primaryWhite,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: Spacing.l),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedStars = index + 1;
                      });
                      widget.onRatingChanged(selectedStars);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: index < selectedStars
                              ? AppColors.accentPurpleBlue
                              : const Color(0xFF0F0E13),
                          borderRadius:
                              BorderRadius.circular(BorderRadiusSize.m),
                          border: Border.all(color: const Color(0xFF2C2B32)),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/star.png',
                            width: 28,
                            height: 28,
                            color: index < selectedStars
                                ? AppColors.primaryWhite
                                : const Color(0xFF7C7C7F),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const Gap(Spacing.s),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Spacing.xxs),
                child: Row(
                  children: [
                    const SizedBox(width: 14),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 64,
                          child: Text(
                            widget.leftLabel,
                            style: AppStyles.text13pxRegular.copyWith(
                              color: AppColors.primaryGrey2,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 64,
                          child: Text(
                            widget.rightLabel,
                            style: AppStyles.text13pxRegular.copyWith(
                              color: AppColors.primaryGrey2,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
