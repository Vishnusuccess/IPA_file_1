import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';

class ChatBubble extends StatefulWidget {
  const ChatBubble({
    required this.message,
    required this.isUserMessage,
    this.userName = 'Anonymous explorer',
    this.aiThinking = false,
    super.key,
  });

  final String message;
  final bool isUserMessage;
  final String userName;
  final bool aiThinking;

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble>
    with SingleTickerProviderStateMixin {
  late String _displayText;
  String _lastMessage = '';

  @override
  void initState() {
    super.initState();
    _displayText = widget.message;
    _lastMessage = widget.message;
  }

  @override
  void didUpdateWidget(ChatBubble oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.message != _lastMessage) {
      setState(() {
        _displayText = widget.message;
        _lastMessage = widget.message;
      });

      debugPrint('Message updated: ${widget.message}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          widget.isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: widget.isUserMessage
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: widget.isUserMessage
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          if (!widget.isUserMessage) ...[
            _buildBotIcon(),
            const SizedBox(width: Spacing.xs),
          ],
          Flexible(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                vertical: Spacing.xxs,
                horizontal: Spacing.xs,
              ),
              padding: const EdgeInsets.all(Spacing.m),
              decoration: BoxDecoration(
                color: widget.isUserMessage
                    ? AppColors.accentPurpleBlue
                    : AppColors.primaryGrey7,
                border: Border.all(
                  color: AppColors.primaryGrey6,
                ),
                gradient: widget.isUserMessage
                    ? const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF6962F2),
                          Color(0xFF5851EC),
                        ],
                      )
                    : null,
                borderRadius: BorderRadius.only(
                  topLeft: widget.isUserMessage
                      ? const Radius.circular(BorderRadiusSize.xxl)
                      : Radius.zero,
                  topRight: const Radius.circular(BorderRadiusSize.xxl),
                  bottomLeft: const Radius.circular(BorderRadiusSize.xxl),
                  bottomRight: widget.isUserMessage
                      ? Radius.zero
                      : const Radius.circular(BorderRadiusSize.xxl),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!widget.isUserMessage)
                    Text(
                      context.strings.chatBotName,
                      style: AppStyles.text11pxBold.copyWith(
                        color: AppColors.primaryGrey2,
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  const SizedBox(height: Spacing.xxxs),
                  if (widget.aiThinking)
                    Text(
                      context.strings.chatBotThinking,
                      style: AppStyles.text16pxRegular.copyWith(
                        color: AppColors.primaryWhite,
                      ),
                    )
                  else
                    _buildMarkdownText(_displayText),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBotIcon() {
    return widget.aiThinking
        ? _PulsatingBotIcon()
        : Image.asset(
            'assets/logo/coach_logo.png',
            width: 48,
            height: 48,
            fit: BoxFit.fill,
          );
  }

  Widget _buildMarkdownText(String text) {
    debugPrint('Formatting message: $text');
    debugPrint('Contains newlines: ${text.contains('\n')}');
    debugPrint('Contains bold markers: ${text.contains('**')}');

    final cleanedText =
        text.trimLeft().replaceAll(RegExp(r'^\s+', multiLine: true), '');

    return MarkdownBody(
      data: cleanedText,
      styleSheet: MarkdownStyleSheet(
        p: AppStyles.text16pxRegular.copyWith(color: AppColors.primaryWhite),
        strong: AppStyles.text16pxBold.copyWith(color: AppColors.primaryWhite),
        blockquote: AppStyles.text16pxRegular.copyWith(
          color: AppColors.primaryWhite,
          backgroundColor: Colors.transparent,
        ),
        codeblockDecoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class _PulsatingBotIcon extends StatefulWidget {
  @override
  _PulsatingBotIconState createState() => _PulsatingBotIconState();
}

class _PulsatingBotIconState extends State<_PulsatingBotIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.8, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Image.asset(
        'assets/logo/coach_logo.png',
        width: 48,
        height: 48,
        fit: BoxFit.cover,
      ),
    );
  }
}
