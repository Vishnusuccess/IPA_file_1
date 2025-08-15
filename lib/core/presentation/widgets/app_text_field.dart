import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.hintText,
    this.controller,
    this.style,
    this.hintStyle,
    this.obscureText = false,
    this.showToggleObscureIcon = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.contentPadding,
    this.borderRadius,
    this.fillColor,
    this.borderColor,
    this.maxLines = 1,
    this.maxLength,
    this.suffixIcon,
    this.onSuffixIconTap,
    this.validator,
  });

  final String? hintText;
  final TextEditingController? controller;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final bool obscureText;
  final bool showToggleObscureIcon;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FocusNode? focusNode;
  final EdgeInsets? contentPadding;
  final double? borderRadius;
  final Color? fillColor;
  final Color? borderColor;
  final int? maxLines;
  final int? maxLength;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final String? Function(String?)? validator;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });

    widget.onSuffixIconTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      enableSuggestions: false,
      controller: widget.controller,
      focusNode: widget.focusNode,
      obscureText: _obscureText,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmitted,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      validator: widget.validator,
      style: widget.style ??
          AppStyles.text16pxRegular.copyWith(
            color: AppColors.primaryWhite,
          ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: widget.hintStyle ??
            AppStyles.text16pxRegular.copyWith(
              color: AppColors.primaryGrey3,
            ),
        filled: true,
        fillColor: widget.fillColor ?? AppColors.primaryGrey7,
        contentPadding: widget.contentPadding ??
            const EdgeInsets.symmetric(
              vertical: Spacing.s,
              horizontal: Spacing.m,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            widget.borderRadius ?? BorderRadiusSize.s,
          ),
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.menuItemBorder,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            widget.borderRadius ?? BorderRadiusSize.s,
          ),
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.menuItemBorder,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            widget.borderRadius ?? BorderRadiusSize.s,
          ),
          borderSide: BorderSide(
            color: widget.borderColor ?? AppColors.accentPurpleBlue,
            width: 2,
          ),
        ),
        suffixIcon: _buildSuffixIcon(),
      ),
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.suffixIcon != null) {
      return GestureDetector(
        onTap: widget.onSuffixIconTap,
        child: widget.suffixIcon,
      );
    }
    if (widget.showToggleObscureIcon) {
      return IconButton(
        icon: Icon(
          _obscureText ? Icons.visibility_off : Icons.visibility,
          color: AppColors.primaryGrey3,
        ),
        onPressed: _toggleObscureText,
      );
    }
    return null;
  }
}
