import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/widget/rounded_button.dart';

class DepartmentCard extends StatelessWidget {
  final String name;
  final String code;
  final String description;
  final VoidCallback onUpdate;
  final VoidCallback onDelete;

  const DepartmentCard({
    super.key,
    required this.name,
    required this.code,
    required this.description,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RoundedIconButton(
                      onPressed: onUpdate,
                      icon: Icons.edit,
                      borderColor: Colors.blue,
                      color: Colors.amber.withAlpha(60),
                      radius: 100,
                      width: 40,
                      height: 40,
                      size: 16,
                    ),
                    Gap(10),
                    RoundedIconButton(
                      onPressed: onDelete,
                      icon: Icons.delete,
                      borderColor: Colors.blue,
                      color: Colors.red.withAlpha(60),
                      radius: 100,
                      width: 40,
                      height: 40,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
