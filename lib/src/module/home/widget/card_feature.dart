import 'package:flutter/material.dart';

class CardFeature extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? iconColor;

  const CardFeature({super.key, required this.icon, required this.label, required this.onTap, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: (iconColor ?? Colors.green).withValues(alpha: 0.1), borderRadius: BorderRadius.circular(12)),

              child: Icon(icon, size: 28, color: iconColor ?? Colors.green.shade600),
            ),
            const SizedBox(height: 12),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.grey.shade700, height: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
