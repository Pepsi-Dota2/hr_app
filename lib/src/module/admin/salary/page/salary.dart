import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/admin/salary/cubit/salaryadmin_cubit.dart';
import 'package:hr_app/src/module/admin/salary/widget/card_salary.dart';

@RoutePage()
class SalaryAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const SalaryAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => SalaryadminCubit()..getSalaryEmp(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController onSearch = TextEditingController();
    final cubit = context.read<SalaryadminCubit>();
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Salary Employee",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: BlocBuilder<SalaryadminCubit, SalaryadminState>(
              builder: (context, state) {
                return TextField(
                  controller: onSearch,
                  onChanged: cubit.search,
                  decoration: InputDecoration(
                    hintText: "Search by name...",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: state.searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              cubit.clearSearch();
                              onSearch.clear();
                            },
                          )
                        : null,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<SalaryadminCubit, SalaryadminState>(
              builder: (context, state) {
                if (state.status == Status.loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: state.filteredSalary.length,
                  itemBuilder: (BuildContext context, int index) {
                    final salary = state.filteredSalary[index];
                    return SalaryCard(
                      empName: salary.emp_name,
                      position: salary.position,
                      baseSalary: salary.base_salary,
                      totalBonus: salary.total_bonus,
                      totalDeduction: salary.total_deduction,
                      netSalary: salary.net_salary,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
