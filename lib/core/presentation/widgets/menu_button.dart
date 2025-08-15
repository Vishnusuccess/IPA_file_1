import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trueme/core/design/app_icons.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/navigation/router.dart';
import 'package:trueme/core/services/button_tracking_helper.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      icon: SvgPicture.asset(
        AppIcons.svgMenuIcon,
        colorFilter: const ColorFilter.mode(
          AppColors.primaryGrey1,
          BlendMode.srcIn,
        ),
      ),

      onPressed: (() {
        context.router.push(
          const MenuRoute(),
        );
      }).withTracking(
        'Menu Button',
        properties: {'navigation_target': 'menu'},
      ),
    );
  }
}
