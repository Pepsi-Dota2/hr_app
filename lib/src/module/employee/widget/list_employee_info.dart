import 'package:flutter/material.dart';

class ListEmployeeInfoWidget extends StatelessWidget {
  final String? empId;
  final String? empName;
  final String? empTel;
  final String? empReligion;
  final String? salary;
  final String? accountBank;
  final String? startWorking;
  final String? empGender;
  final String? departmentName;
  final String? departmentCode;

  const ListEmployeeInfoWidget({
    super.key,
    this.empId,
    this.empName,
    this.empTel,
    this.empReligion,
    this.salary,
    this.accountBank,
    this.startWorking,
    this.empGender,
    this.departmentName,
    this.departmentCode,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1.0,
      decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.card_membership, color: Colors.blue.shade400),
            title: Text("employee ID"),
            subtitle: Text(empId ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue.shade400),
            title: Text("employee Name"),
            subtitle: Text(empName ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.wc, color: Colors.blue.shade400),
            title: Text("gender"),
            subtitle: Text(empGender ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.apartment, color: Colors.blue.shade400),
            title: Text("department"),
            subtitle: Text(departmentName ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.code, color: Colors.blue.shade400),
            title: Text("department code"),
            subtitle: Text(departmentCode ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.phone_android, color: Colors.blue.shade400),
            title: Text("tel"),
            subtitle: Text(empTel ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.public, color: Colors.blue.shade400),
            title: Text("religion"),
            subtitle: Text(empReligion ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.monetization_on, color: Colors.blue.shade400),
            title: Text("salary"),
            subtitle: Text(salary ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_balance, color: Colors.blue.shade400),
            title: Text("account bank"),
            subtitle: Text(accountBank ?? ""),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.blue.shade400),
            title: Text("start working"),
            subtitle: Text(startWorking ?? ""),
          ),
        ],
      ),
    );
  }
}
