import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';

class ChatSendTextField extends StatefulWidget {
  const ChatSendTextField({
    this.sendCallback,
    this.isEnabled = true,
    super.key,
  });

  final void Function(String)? sendCallback;
  final bool isEnabled;

  @override
  State<ChatSendTextField> createState() => _ChatSendTextFieldState();
}

class _ChatSendTextFieldState extends State<ChatSendTextField> {
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (widget.isEnabled && _controller.text.trim().isNotEmpty) {
      widget.sendCallback?.call(_controller.text.trim());
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryGrey7,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(BorderRadiusSize.l),
          topRight: Radius.circular(BorderRadiusSize.l),
        ),
        border: Border.all(color: AppColors.primaryGrey5),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.m,
        vertical: Spacing.xs,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  enabled: widget.isEnabled,
                  style: AppStyles.text16pxRegular
                      .copyWith(color: AppColors.primaryGrey1),
                  cursorColor: AppColors.primaryGrey1,
                  decoration: InputDecoration(
                    hintText: context.strings.chatReplyDots,
                    hintStyle: AppStyles.text16pxRegular
                        .copyWith(color: AppColors.primaryGrey3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(BorderRadiusSize.m),
                      borderSide:
                          const BorderSide(color: AppColors.primaryGrey5),
                    ),
                    filled: true,
                    fillColor: AppColors.primaryGrey6,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: Spacing.m,
                      vertical: Spacing.s,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(BorderRadiusSize.m),
                      borderSide: const BorderSide(color: Color(0xFF7C7C7F)),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: Spacing.s),
              GestureDetector(
                onTap: widget.isEnabled ? _sendMessage : null,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.isEnabled
                        ? AppColors.accentPurpleBlue
                        : AppColors.primaryGrey5,
                    borderRadius: BorderRadius.circular(BorderRadiusSize.m),
                  ),
                  padding: const EdgeInsets.all(Spacing.s),
                  child: Image.asset(
                    'assets/icons/send.png',
                    width: 24,
                    height: 24,
                    color: AppColors.primaryWhite,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
