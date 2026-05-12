import 'package:flutter/material.dart';

class FormPasswordField extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;

  const FormPasswordField({
    super.key,
    this.hintText,
    this.controller,
  });

  @override
  State<FormPasswordField> createState() =>
      _FormPasswordFieldState();
}

class _FormPasswordFieldState
    extends State<FormPasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText ?? 'Enter Password',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: Icon(
            obscureText
                ? Icons.visibility_off
                : Icons.visibility,
          ),
        ),
      ),
    );
  }
}