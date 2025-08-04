import 'package:flutter/material.dart';

class CustomDropdownField<T> extends StatelessWidget {
  final String label;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;

  const CustomDropdownField({super.key, required this.label, required this.value, required this.items, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    // Debug: Check for duplicates and missing values
    if (value != null) {
      final matchingItems = items.where((item) => item.value == value);

      if (matchingItems.isEmpty) {
        debugPrint('⚠️ $label: Value $value not found in items');
        debugPrint('Available values: ${items.map((e) => e.value).toList()}');
      } else if (matchingItems.length > 1) {
        debugPrint('⚠️ $label: Duplicate values found for $value');
      }
    }

    // Check for duplicate values in items
    final values = items.map((e) => e.value).toList();
    final uniqueValues = values.toSet();
    if (values.length != uniqueValues.length) {
      debugPrint('⚠️ $label: Duplicate values in items: $values');
    }

    // Only use value if it exists in items and is unique
    final validValue = value != null && items.where((item) => item.value == value).length == 1 ? value : null;

    return DropdownButtonFormField<T>(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      value: validValue,
      items: items,
      onChanged: onChanged,
    );
  }
}
