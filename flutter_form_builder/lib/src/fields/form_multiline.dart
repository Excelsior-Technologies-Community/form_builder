import 'package:flutter/material.dart';

class FormMultilineField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;

  const FormMultilineField({
    super.key,
    this.controller,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 5,
      decoration: InputDecoration(
        hintText: hintText ?? 'Enter Text',
        border: const OutlineInputBorder(),
      ),
    );
  }
}