import 'package:flutter/material.dart';

class BtnButtonOnTabWidget extends StatelessWidget {
  const BtnButtonOnTabWidget({super.key, this.onTab, this.label, this.color, this.labelColor, this.fontWeight, this.fontSize});
  final VoidCallback? onTab;
  final String? label;
  final Color? color;
  final Color? labelColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTab,
      child: Container(
        width: size.width * 0.3,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Text(
            label ?? "",
            style: TextStyle(color: labelColor, fontWeight: fontWeight, fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
