import 'package:flutter/material.dart';

class DepartmentCard extends StatelessWidget {
  final String name;
  final String code;
  final String description;

  const DepartmentCard({super.key, required this.name, required this.code, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.code, size: 16, color: Colors.grey),
                const SizedBox(width: 6),
                Text("Code: $code", style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 4),
            Text("Description: $description"),
          ],
        ),
      ),
    );
  }
}
