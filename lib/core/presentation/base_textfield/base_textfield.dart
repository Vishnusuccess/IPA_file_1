import 'package:flutter/material.dart';
import 'package:trueme/core/design/design.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.label, super.key,
    this.isPassword = false,
    this.validator,
    this.onChanged,
  });
  final String label;
  final bool isPassword;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: const TextStyle(color: Colors.white),
      cursorColor: AppColors.accentLightPurpleBlue,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        filled: true,
        fillColor: const Color(0xFF2A2A2A),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.fromLTRB(18, 20, 16, 20),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
