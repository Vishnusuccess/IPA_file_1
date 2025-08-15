import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';

class AppCheckBox extends StatefulWidget {
  const AppCheckBox({
    required this.isChecked,
    this.label,
    this.child,
    this.onChanged,
    super.key,
  }) : assert(
          label != null || child != null,
          'Either label or child must be provided',
        );

  final String? label;
  final Widget? child;
  final bool isChecked;
  final ValueChanged<bool>? onChanged;

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  void didUpdateWidget(covariant AppCheckBox oldWidget) {
    if (oldWidget.isChecked != widget.isChecked) {
      isChecked = widget.isChecked;
    }
    super.didUpdateWidget(oldWidget);
  }

  void toggleCheck() {
    setState(() {
      isChecked = !isChecked;
    });
    widget.onChanged?.call(isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleCheck,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: isChecked ? AppColors.primaryGrey7 : Colors.transparent,
          borderRadius: BorderRadius.circular(BorderRadiusSize.l),
          border: isChecked
              ? Border.all(color: AppColors.primaryGrey6)
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isChecked
                    ? AppColors.accentPurpleBlue
                    : AppColors.primaryGrey7,
                borderRadius: BorderRadius.circular(BorderRadiusSize.s),
                border: Border.all(
                  color: isChecked
                      ? AppColors.accentPurpleBlue
                      : AppColors.primaryGrey6,
                  width: 2,
                ),
              ),
              child: isChecked
                  ? const Icon(
                      Icons.check,
                      color: AppColors.primaryWhite,
                      size: 14,
                    )
                  : null,
            ),
            const SizedBox(width: Spacing.s),
            Flexible(
              child: widget.child ??
                  Text(
                    widget.label![0].toUpperCase() + widget.label!.substring(1),
                    style: isChecked
                        ? AppStyles.text16pxBold
                            .copyWith(color: AppColors.primaryWhite)
                        : AppStyles.text16pxRegular
                            .copyWith(color: AppColors.primaryGrey4),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
