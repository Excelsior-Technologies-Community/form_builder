import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormPhoneField extends StatelessWidget {
  final TextEditingController? controller;

  final String? hintText;

  const FormPhoneField({super.key, this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      keyboardType: TextInputType.phone,

      /// BUILT-IN FORMATTERS
      inputFormatters: [
        /// ONLY NUMBERS
        FilteringTextInputFormatter.digitsOnly,

        /// MAX 10 DIGITS
        LengthLimitingTextInputFormatter(10),
      ],

      validator: (value) {
        return FormValidators.phone(value);
      },

      decoration: InputDecoration(
        hintText: hintText ?? 'Enter Phone Number',

        border: const OutlineInputBorder(),
      ),
    );
  }
}
