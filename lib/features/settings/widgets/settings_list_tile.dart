import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';

class SettingListTile extends StatefulWidget {
  const SettingListTile({
    required this.title,
    required this.children,
    super.key,
  });

  final String title;
  final List<Widget> children;

  @override
  State<SettingListTile> createState() => _SettingListTileState();
}

class _SettingListTileState extends State<SettingListTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryGrey7,
        border: Border.all(color: AppColors.primaryGrey5, width: 1.5),
        borderRadius: BorderRadius.circular(BorderRadiusSize.m),
      ),
      child: Column(
        children: [
          // Header (always visible)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.m,
              vertical: Spacing.m,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: AppStyles.text16pxMedium.copyWith(
                        color: AppColors.primaryWhite,
                        fontWeight: FontWeight.bold,),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.primaryWhite,
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
          // Children (visible when expanded)
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.m,
                vertical: Spacing.xs,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: widget.children,
              ),
            ),
        ],
      ),
    );
  }
}
