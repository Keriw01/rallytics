import 'package:flutter/material.dart';
import 'package:rallytics/core/constants/validation_constants.dart';
import 'package:rallytics/generated/l10n.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).authErrorEmailRequired;
        }

        if (!kEmailRegex.hasMatch(value)) {
          return S.of(context).authErrorInvalidEmailFormat;
        }
        return null;
      },

      style: textTheme.labelMedium,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        filled: true,
        prefixIcon: const Icon(Icons.email, size: 20),
        labelText: S.of(context).emailLabel,
        labelStyle: textTheme.labelMedium,
      ),
    );
  }
}
