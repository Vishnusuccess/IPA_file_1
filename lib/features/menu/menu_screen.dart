import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trueme/core/design/app_colors.dart';
import 'package:trueme/core/design/app_icons.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:trueme/features/authorization/authorization_bloc.dart';
import 'package:trueme/features/menu/bloc/menu_screen_bloc.dart';
import 'package:trueme/features/menu/event_listener/menu_screen_listener.dart';

@RoutePage()
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MenuScreenBloc()..add(const MenuScreenEvent.onInit()),
      child: const MenuScreenEventListener(
        child: _MenuScreenView(),
      ),
    );
  }
}

class _MenuScreenView extends StatelessWidget {
  const _MenuScreenView();

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      backgorundColor: AppColors.primaryBlack,
      body: SafeArea(
        child: BlocBuilder<MenuScreenBloc, MenuScreenState>(
          builder: (context, state) {
            return state.menuEventState.when(
              idle: () => const _MenuContent(),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: () => const _MenuContent(),
              navigatingToSettings: () => const _MenuContent(),
              navigatingToChat: () => const _MenuContent(),
              navigatingToEvents: () => const _MenuContent(),
              navigatingToPrograms: () => const _MenuContent(),
              error: (message) => Center(
                child: Text('Error: $message',
                    style: const TextStyle(color: AppColors.primaryWhite),),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _MenuContent extends StatelessWidget {
  const _MenuContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => context.router.maybePop(),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.close,
                    color: AppColors.primaryWhite,
                    size: 24,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  context.strings.menuTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppColors.primaryWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 40), // Balance the close button
            ],
          ),
        ),

        // Menu tiles
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _MenuTile(
                        isSvg: true,
                        iconPath: AppIcons.svgChatIcon,
                        label: context.strings.menuReportIssue,
                        onTap: () {
                          context
                              .read<MenuScreenBloc>()
                              .add(const MenuScreenEvent.onNavigateToChat());
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _MenuTile(
                        iconPath: AppIcons.svgSettingsIcon,
                        label: context.strings.menuSettings,
                        isSvg: true,
                        onTap: () {
                          context.read<MenuScreenBloc>().add(
                              const MenuScreenEvent.onNavigateToSettings(),);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Opacity(
                        opacity: 0.4,
                        child: _MenuTile(
                          iconPath: AppIcons.svgEventsIcons,
                          isSvg: true,
                          label: context.strings.menuEvents,
                          onTap: () {
                            context.read<MenuScreenBloc>().add(
                                const MenuScreenEvent.onNavigateToEvents(),);
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Opacity(
                        opacity: 0.4,
                        child: _MenuTile(
                          iconPath: AppIcons.svgProgramIcon,
                          isSvg: true,
                          label: context.strings.menuPrograms,
                          onTap: () {
                            context.read<MenuScreenBloc>().add(
                                const MenuScreenEvent.onNavigateToPrograms(),);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Logout button at the bottom
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: GestureDetector(
            onTap: () {
              // Trigger logout through AuthorizationBloc
              context
                  .read<AuthorizationBloc>()
                  .add(const AuthorizationEvent.onLogout());
            },
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/logout.png',
                  width: 20,
                  height: 20,
                  color: AppColors.accentPurpleBlue,
                ),
                const SizedBox(width: 8),
                Text(
                  context.strings.logoutButtonText,
                  style: const TextStyle(
                    color: AppColors.accentPurpleBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _MenuTile extends StatelessWidget {

  const _MenuTile({
    required this.iconPath,
    required this.label,
    required this.onTap,
    this.isSvg = false,
  });
  final String iconPath;
  final String label;
  final VoidCallback onTap;
  final bool isSvg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          color: const Color(0xFF1F1F1F),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFF4F4E56),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x263E38B3),
              offset: Offset(0, 4),
              blurRadius: 8,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isSvg)
              SvgPicture.asset(
                iconPath,
                width: 32,
                height: 32,
                colorFilter: const ColorFilter.mode(
                  AppColors.accentPurpleBlue,
                  BlendMode.srcIn,
                ),
              )
            else
              Image.asset(
                iconPath,
                width: 45,
                height: 45,
              ),
            const SizedBox(height: 12),
            Text(
              label,
              style: const TextStyle(
                color: AppColors.primaryWhite,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
