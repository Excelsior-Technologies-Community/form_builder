import 'package:flutter/material.dart';

class FormRadioGroup<T> extends StatelessWidget {
  final List<T> items;
  final T groupValue;
  final void Function(T?)? onChanged;

  const FormRadioGroup({
    super.key,
    required this.items,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return RadioListTile<T>(
          value: item,
          groupValue: groupValue,
          onChanged: onChanged,
          title: Text(item.toString()),
        );
      }).toList(),
    );
  }
}