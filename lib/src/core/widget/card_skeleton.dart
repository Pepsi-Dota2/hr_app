import 'package:flutter/material.dart';
import 'package:hr_app/src/module/admin/salary/widget/employee_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EmployeeCardSkeleton extends StatelessWidget {
  const EmployeeCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: const EmployeeCardWidget(
        emp_name: 'John Doe',
        position: 'Software Engineer',
        base_salary: '100000',
        total_bonus: '5000',
        total_deduction: '1000',
        net_salary: '104000',
      ),
    );
  }
}
