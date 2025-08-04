import 'package:flutter/material.dart';

class EmployeeDetailCard extends StatelessWidget {
  final String empName;
  final String empEmail;
  final String empTel;
  final String empBirthDate;
  final String createdAt;
  final String? empGender;
  final String? empReligion;
  final String? empBankAccount;
  final String? empImg;
  final List<String>? empDayOff;

  const EmployeeDetailCard({
    super.key,
    required this.empName,
    required this.empEmail,
    required this.empTel,
    required this.empBirthDate,
    required this.createdAt,
    this.empGender,
    this.empReligion,
    this.empBankAccount,
    this.empImg,
    this.empDayOff,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> dayOffList =
        empDayOff?.map((e) {
          final trimmed = e.trim();
          return trimmed[0].toUpperCase() + trimmed.substring(1);
        }).toList() ??
        [];

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: empImg != null ? NetworkImage(empImg!) : const AssetImage('assets/avatar_placeholder.png') as ImageProvider,
              ),
              const SizedBox(width: 16),
              Expanded(child: Text(empName)),
            ],
          ),
          const SizedBox(height: 20),

          _infoRow(Icons.email, 'Email', empEmail),
          _infoRow(Icons.phone, 'Tel', empTel),
          _infoRow(Icons.cake, 'Birth Date', empBirthDate),
          _infoRow(Icons.wc, 'Gender', empGender!),
          _infoRow(Icons.favorite, 'Religion', empReligion!),
          _infoRow(Icons.account_balance, 'Bank Account', empBankAccount!),
          _infoRow(Icons.access_time, 'Created At', createdAt),
          _infoRow(Icons.calendar_today, 'Day Off', dayOffList.join(', ')),
        ],
      ),
    );
  }

  Widget _infoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: Colors.grey[600]),
          const SizedBox(width: 10),
          Text("$label: ", style: const TextStyle(fontWeight: FontWeight.w500)),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
