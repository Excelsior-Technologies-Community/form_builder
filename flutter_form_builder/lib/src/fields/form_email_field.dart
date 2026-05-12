import 'package:flutter/material.dart';
import 'package:flutter_form_builder/src/validation/form_validator.dart';

class FormEmailField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;

  const FormEmailField({super.key, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        return FormValidators.email(value);
      },
      decoration: InputDecoration(
        hintText: hintText ?? 'Enter Email',
        border: const OutlineInputBorder(),
      ),
    );
  }
}
