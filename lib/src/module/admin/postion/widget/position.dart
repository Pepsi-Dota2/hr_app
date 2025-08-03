import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/widget/rounded_button.dart';

class PositionCard extends StatelessWidget {
  final String position_name;
  final int position_salary;
  final VoidCallback onUpdate;
  final VoidCallback onDelete;

  const PositionCard({super.key, required this.position_name, required this.position_salary, required this.onUpdate, required this.onDelete});

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
            Text(position_name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.code, size: 16, color: Colors.grey),
                    const SizedBox(width: 6),
                    Text("Salary: $position_salary", style: const TextStyle(color: Colors.grey)),
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
