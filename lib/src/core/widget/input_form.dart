import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
    required this.name,
    this.label,
    this.hintText,
    this.initialValue,
    this.obscureText = false,
    this.keyboardType,
    this.maxLines = 1,
    this.readOnly = false,
    this.onChanged,
    this.validators,
    this.prefixIcon,
    this.suffixIcon,
    required this.borderRadius,
    this.controller,
  });

  final String name;
  final String? label;
  final String? hintText;
  final String? initialValue;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int maxLines;
  final bool readOnly;
  final void Function(String?)? onChanged;
  final List<String? Function(String?)>? validators;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double borderRadius;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      controller: controller,
      name: name,
      initialValue: initialValue,
      obscureText: obscureText,
      readOnly: readOnly,
      maxLines: maxLines,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius)),
      ),
      validator: FormBuilderValidators.compose(validators ?? [FormBuilderValidators.required()]),
    );
  }
}
