import 'package:flutter/material.dart';

class FormBuilder extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final Widget child;

  const FormBuilder({
    super.key,
    required this.formKey,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: child,
    );
  }
}