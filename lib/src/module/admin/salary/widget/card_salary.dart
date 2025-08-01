import 'package:flutter/material.dart';
import 'package:hr_app/src/module/admin/salary/widget/salary_item.dart';

class SalaryCard extends StatelessWidget {
  final String empName;
  final String position;
  final int baseSalary;
  final int totalBonus;
  final int totalDeduction;
  final int netSalary;

  const SalaryCard({
    super.key,
    required this.empName,
    required this.position,
    required this.baseSalary,
    required this.totalBonus,
    required this.totalDeduction,
    required this.netSalary,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.account_circle, size: 40, color: Colors.blue),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(empName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(
                        position,
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade600, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 24, thickness: 1),
            SalaryItem(label: 'Base Salary', value: baseSalary, icon: Icons.monetization_on, color: Colors.blue.shade600),
            SalaryItem(label: 'Bonus', value: totalBonus, icon: Icons.card_giftcard, color: Colors.green.shade600),
            SalaryItem(label: 'Deduction', value: totalDeduction, icon: Icons.remove_circle_outline, color: Colors.red.shade600),
            const Divider(height: 24, thickness: 1),
            SalaryItem(label: 'Net Salary', value: netSalary, icon: Icons.attach_money, color: Colors.purple.shade700, isBold: true),
          ],
        ),
      ),
    );
  }
}
