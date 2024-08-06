import 'package:flutter/material.dart';

class GlobalTextFormField extends StatelessWidget {
  final String? labelText;
  final Widget? prefixIcon;
  final String hintText;
  final TextEditingController? controller;
  const GlobalTextFormField({
    super.key,
    required this.hintText,
    this.labelText,
    this.controller,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainer,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: labelText,
        hintText: hintText,
      ),
      controller: controller,
    );
  }
}
