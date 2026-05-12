import 'package:flutter/material.dart';

class FormSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String title;

  const FormSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: value,
      onChanged: onChanged,
      title: Text(title),
      contentPadding: EdgeInsets.zero,
    );
  }
}