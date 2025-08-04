import 'package:flutter/material.dart';

typedef StringValidator = String? Function(String?);

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.controller,
    required this.isEmailField,
    required this.labelText,
    required this.validator,
  });

  final TextEditingController controller;
  final bool isEmailField;
  final String labelText;
  final StringValidator? validator;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      controller: controller,
      obscureText: isEmailField ? false : true,
      keyboardType: isEmailField
          ? TextInputType.emailAddress
          : TextInputType.text,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      style: textTheme.labelMedium,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        filled: true,
        prefixIcon: Icon(isEmailField ? Icons.email : Icons.lock, size: 20),
        labelText: labelText,
        labelStyle: textTheme.labelMedium,
        errorMaxLines: 4,
      ),
    );
  }
}
