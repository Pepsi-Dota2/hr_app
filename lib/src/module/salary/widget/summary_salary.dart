import 'package:flutter/material.dart';

class SummarySalaryWidget extends StatelessWidget {
  const SummarySalaryWidget({super.key, this.title, this.salary, this.icon, this.color});

  final String? title;
  final String? salary;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: (color ?? Colors.blue).withAlpha(38),
                child: Icon(icon ?? Icons.attach_money, color: color ?? Colors.blue),
              ),
              const SizedBox(width: 12),
              Text(title ?? "Title", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),

          Text(
            salary ?? "-",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color ?? Colors.blue),
          ),
        ],
      ),
    );
  }
}
