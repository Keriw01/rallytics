import 'package:flutter/material.dart';
import 'package:rallytics/core/constants/validation_constants.dart';
import 'package:rallytics/generated/l10n.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      controller: controller,
      obscureText: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).authErrorPasswordRequired;
        }

        if (!kPasswordRegex.hasMatch(value)) {
          return S.of(context).authErrorWeakPassword;
        }

        return null;
      },
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
        prefixIcon: const Icon(Icons.lock, size: 20),
        labelText: S.of(context).passwordLabel,
        labelStyle: textTheme.labelMedium,
        errorMaxLines: 4,
      ),
    );
  }
}
