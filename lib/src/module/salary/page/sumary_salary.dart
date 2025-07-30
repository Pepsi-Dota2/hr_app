import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/salary/cubit/salary_cubit.dart';
import 'package:hr_app/src/module/salary/widget/summary_salary.dart';
import 'package:intl/intl.dart';

@RoutePage()
class SumarySalaryPage extends StatelessWidget implements AutoRouteWrapper {
  const SumarySalaryPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => SalaryCubit()..getSalary(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Summary Salary", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<SalaryCubit, SalaryState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            children: [
              SummarySalaryWidget(
                title: "salary",
                salary: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].base_salary) : "0",
                icon: Icons.paid,
                color: Colors.green,
              ),
              SummarySalaryWidget(
                title: "total bonus",
                salary: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].total_bonus) : "0",
                icon: Icons.card_giftcard,
                color: Colors.orange,
              ),
              SummarySalaryWidget(
                title: "total deduction",
                salary: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].total_deduction) : "0",
                icon: Icons.remove_circle_outline,
                color: Colors.red,
              ),
              SummarySalaryWidget(
                title: "total salary",
                salary: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].net_salary) : "0",
                icon: Icons.savings,
                color: Colors.blue,
              ),
            ],
          );
        },
      ),
    );
  }
}
