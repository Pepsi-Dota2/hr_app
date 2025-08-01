import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class CustomDateTimePicker extends StatelessWidget {
  final String name;
  final String label;
  final InputType inputType;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final TimeOfDay? initialTime;
  final String? hint;
  final IconData? icon;
  final DateFormat format;
  final FormFieldValidator<DateTime>? validator;

  const CustomDateTimePicker({
    super.key,
    required this.name,
    this.label = 'Select Date & Time',
    this.inputType = InputType.both,
    this.firstDate,
    this.lastDate,
    this.initialTime,
    this.hint,
    this.icon,
    required this.format,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: name,
      inputType: inputType,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint ?? 'Tap to choose',
        prefixIcon: Icon(icon ?? Icons.calendar_today, color: Colors.blueAccent),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),
      ),
      format: format,
      initialTime: initialTime ?? const TimeOfDay(hour: 9, minute: 0),
      firstDate: firstDate ?? DateTime(2000),
      lastDate: lastDate ?? DateTime(2100),
      style: const TextStyle(fontSize: 16, color: Colors.black87),
      validator: validator,
    );
  }
}
