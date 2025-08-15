import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trueme/core/design/design.dart';

class ChatBotButton extends StatefulWidget {
  const ChatBotButton({
    required this.onTap,
    this.isHighlighted = false,
    super.key,
  });

  final void Function() onTap;
  final bool isHighlighted;

  @override
  State<ChatBotButton> createState() => _ChatBotButtonState();
}

class _ChatBotButtonState extends State<ChatBotButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _blurAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _blurAnimation = Tween<double>(begin: 8, end: 16).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ),);

    _opacityAnimation =
        Tween<double>(begin: 0.2, end: 0.5).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ),);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: widget.isHighlighted
                  ? [
                      BoxShadow(
                        color: AppColors.accentPurpleBlue
                            .withValues(alpha: _opacityAnimation.value),
                        blurRadius: _blurAnimation.value,
                      ),
                    ]
                  : [],
            ),
            child: child,
          );
        },
        child: SvgPicture.asset(
          'assets/svg/coach_logo.svg',
          width: 48,
          height: 48,
        ),
      ),
    );
  }
}
