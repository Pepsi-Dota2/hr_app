import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class InputFormPassword extends StatefulWidget {
  const InputFormPassword({
    super.key,
    required this.name,
    this.label,
    this.hintText,
    this.initialValue,
    this.isPassword = false,
    this.keyboardType,
    this.maxLines = 1,
    this.readOnly = false,
    this.onChanged,
    this.validators,
    this.prefixIcon,
    this.controller,
  });

  final String name;
  final String? label;
  final String? hintText;
  final String? initialValue;
  final bool isPassword;
  final TextInputType? keyboardType;
  final int maxLines;
  final bool readOnly;
  final void Function(String?)? onChanged;
  final List<String? Function(String?)>? validators;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  @override
  State<InputFormPassword> createState() => _InputFormPasswordState();
}

class _InputFormPasswordState extends State<InputFormPassword> {
  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.isPassword;
    super.initState();
  }

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      controller: widget.controller,
      name: widget.name,
      initialValue: widget.initialValue,
      obscureText: _obscureText,
      readOnly: widget.readOnly,
      maxLines: widget.isPassword ? 1 : widget.maxLines,
      keyboardType: widget.keyboardType ?? (widget.isPassword ? TextInputType.visiblePassword : null),
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? IconButton(icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility), onPressed: _toggleVisibility)
            : null,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
      ),
      validator: FormBuilderValidators.compose(widget.validators ?? [FormBuilderValidators.required()]),
    );
  }
}
