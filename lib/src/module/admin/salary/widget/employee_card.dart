import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmployeeCardWidget extends StatelessWidget {
  const EmployeeCardWidget({
    super.key,
    required this.emp_name,
    required this.position,
    required this.base_salary,
    required this.total_bonus,
    required this.total_deduction,
    required this.net_salary,
  });

  final String emp_name;
  final String position;
  final String base_salary;
  final String total_bonus;
  final String total_deduction;
  final String net_salary;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Employee name and position
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.person, color: Colors.white),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(emp_name, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(position, style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[600])),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Divider(),
        const SizedBox(height: 8),

        // Salary Details
        _buildSalaryRow(Icons.attach_money, "Base Salary", base_salary),
        _buildSalaryRow(Icons.card_giftcard, "Total Bonus", total_bonus),
        _buildSalaryRow(Icons.remove_circle_outline, "Deduction", total_deduction),
        _buildSalaryRow(Icons.payments, "Net Salary", net_salary, isBold: true),
      ],
    );
  }

  Widget _buildSalaryRow(IconData icon, String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.blueAccent),
          const SizedBox(width: 8),
          Expanded(
            child: Text(label, style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87)),
          ),
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isBold ? Colors.green.shade700 : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
