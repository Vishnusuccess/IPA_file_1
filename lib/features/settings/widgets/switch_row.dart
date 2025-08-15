import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';

class SwitchRow extends StatefulWidget {
  const SwitchRow({
    required this.text,
    this.initialValue = false,
    this.onChanged,
    super.key,
  });

  final String text;
  final bool initialValue;
  final ValueChanged<bool>? onChanged;

  @override
  State<SwitchRow> createState() => _SwitchRowState();
}

class _SwitchRowState extends State<SwitchRow> {
  late bool _switchValue;

  @override
  void initState() {
    super.initState();
    _switchValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Spacing.xs),
      child: Row(
        children: [
          Switch(
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
              if (widget.onChanged != null) {
                widget.onChanged?.call(value);
              }
            },
            activeTrackColor: AppColors.accentPurpleBlue,
            activeColor: AppColors.accentLightPurpleBlue,
            inactiveThumbColor: AppColors.primaryWhite,
            inactiveTrackColor: AppColors.primaryGrey4,
          ),
          const SizedBox(width: Spacing.xs),
          Expanded(
            child: Text(
              widget.text,
              style: AppStyles.text16pxRegular.copyWith(
                color: AppColors.primaryWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
