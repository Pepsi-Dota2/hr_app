import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String name;
  final List<T> items;
  final String Function(T) getLabel;
  final T? initialValue;
  final String? hintText;
  final FormFieldValidator<T>? validator;
  final void Function(T?)? onChanged;

  const CustomDropdown({
    Key? key,
    required this.name,
    required this.items,
    required this.getLabel,
    this.initialValue,
    this.hintText,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<T>(
      name: name,
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: hintText ?? '',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
      ),
      validator: validator,
      items: items.map((item) => DropdownMenuItem<T>(value: item, child: Text(getLabel(item)))).toList(),
      onChanged: onChanged,
    );
  }
}
