import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color borderColor;
  final double radius;
  final Color? iconColor;
  final double size;
  final Color? color;
  final double? width;
  final double? height;

  const RoundedIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.borderColor = Colors.grey,
    this.radius = 12.0,
    this.iconColor,
    this.size = 24.0,
    this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: iconColor),
        iconSize: size,
      ),
    );
  }
}
