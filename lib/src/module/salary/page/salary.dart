import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/salary/cubit/salary_cubit.dart';
import 'package:hr_app/src/module/salary/widget/card_salary.dart';
import 'package:intl/intl.dart';

@RoutePage()
class SalaryPage extends StatelessWidget implements AutoRouteWrapper {
  const SalaryPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SalaryCubit()
        ..scheduleNextUpdate()
        ..getSalary(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Salary", style: TextStyle(color: Colors.white)),
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
              CardSalaryWidget(
                dateTime: state.date,
                salary: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].base_salary) : "0.00",
                totalSalary: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].net_salary) : "0",
                btnLabel: "summary salary",
                onBtnClick: () {
                  context.router.push(SumarySalaryRoute());
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
