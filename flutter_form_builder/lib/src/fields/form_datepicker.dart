import 'package:flutter/material.dart';

class FormDatePicker extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;

  const FormDatePicker({
    super.key,
    required this.controller,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
          initialDate: DateTime.now(),
        );

        if (date != null) {
          controller.text =
              '${date.day}/${date.month}/${date.year}';
        }
      },
      decoration: InputDecoration(
        hintText: hintText ?? 'Select Date',
        border: const OutlineInputBorder(),
        suffixIcon: const Icon(Icons.calendar_month),
      ),
    );
  }
}