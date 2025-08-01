import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MultilineInputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final int maxLines;
  final String? hintText;

  const MultilineInputField({Key? key, required this.label, required this.controller, this.maxLines = 5, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.multiline,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
          ),
        ),
      ],
    );
  }
}
