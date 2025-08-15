import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';

class AppScrollbar extends StatelessWidget {
  const AppScrollbar({required this.child, this.controller, super.key});

  final Widget child;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      // this is a flutter bug on iOS - the following values are not
      // used from the theme:
      // https://github.com/flutter/flutter/issues/143926
      thumbVisibility: true,
      thickness: Spacing.xxxs,
      radius: const Radius.circular(BorderRadiusSize.xxs),
      child: child,
    );
  }
}
