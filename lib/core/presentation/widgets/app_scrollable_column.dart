import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/presentation/widgets/app_scrollbar.dart';

const double _widthMaxParagraph = 530;

class AppScrollableColumn extends StatelessWidget {
  /// Scrollable column with scrollbar
  ///
  /// all arguments correspond to their namesake in [Column]
  const AppScrollableColumn({
    required this.children,
    this.horizontalPadding = Spacing.m,
    this.verticalPadding = Spacing.s,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.useResponsivePadding = true,
    this.scrollController,
    super.key,
  });

  final List<Widget> children;
  final double horizontalPadding;
  final double verticalPadding;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final ScrollController? scrollController;

  /// When true, padding is applied for extremely wide (foldable) screens
  /// to keep content a reasonable width
  final bool useResponsivePadding;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AppScrollbar(
          controller: scrollController,
          child: SingleChildScrollView(
            controller: scrollController,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: useResponsivePadding
                      ? responsivePadding(context, horizontalPadding)
                      : horizontalPadding,
                  vertical: verticalPadding,
                ),
                child: Column(
                  mainAxisAlignment: mainAxisAlignment,
                  crossAxisAlignment: crossAxisAlignment,
                  children: children,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  double responsivePadding(BuildContext context, double size) =>
      max(size, (MediaQuery.of(context).size.width - _widthMaxParagraph) / 2);
}

class AppScrollableColumnInColumn extends StatelessWidget {
  const AppScrollableColumnInColumn({
    required this.children,
    this.horizontalPadding = Spacing.m,
    this.verticalPadding = Spacing.s,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.useResponsivePadding = true,
    this.scrollController,
    super.key,
  });

  final List<Widget> children;
  final double horizontalPadding;
  final double verticalPadding;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final bool useResponsivePadding;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppScrollableColumn(
        scrollController: scrollController,
        horizontalPadding: horizontalPadding,
        verticalPadding: verticalPadding,
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        useResponsivePadding: useResponsivePadding,
        children: children,
      ),
    );
  }
}
