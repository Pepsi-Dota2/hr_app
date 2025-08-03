import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/widget/card_skeleton.dart';
import 'package:hr_app/src/core/widget/form_dropdown.dart';
import 'package:hr_app/src/core/widget/form_text_area.dart';
import 'package:hr_app/src/module/admin/salary/cubit/salaryadmin_cubit.dart';
import 'package:hr_app/src/module/admin/salary/widget/employee_card.dart';
import 'package:intl/intl.dart';

@RoutePage()
class DeductionAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const DeductionAdminPage({super.key, @PathParam('emp_id') required this.empid});

  final String empid;
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SalaryadminCubit()
        ..getSalaryEmp()
        ..getEmployeeById(empid),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController notesController = TextEditingController();
    final List<DropdownMenuItem<String>> deductionItems = const [
      DropdownMenuItem(value: 'late', child: Text('Late')),
      DropdownMenuItem(value: 'late_x3', child: Text('Late x3')),
      DropdownMenuItem(value: 'half_day', child: Text('Half Day')),
      DropdownMenuItem(value: 'absent', child: Text('Absent')),
    ];
    final cubit = context.read<SalaryadminCubit>();
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Deduction",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      body: BlocBuilder<SalaryadminCubit, SalaryadminState>(
        builder: (context, state) {
          final isLoading = state.status == Status.loading;
          final selectedDeduction = state.selectedDeduction;

          if (isLoading) {
            return const EmployeeCardSkeleton();
          }
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmployeeCardWidget(
                    emp_name: state.salary.isNotEmpty ? state.salary[0].emp_name : "N/A",
                    position: state.salary.isNotEmpty ? state.salary[0].position : "N/A",
                    base_salary: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].base_salary) : "N/A",
                    total_bonus: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].total_bonus) : "N/A",
                    total_deduction: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].total_deduction) : "N/A",
                    net_salary: state.salary.isNotEmpty ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].net_salary) : "N/A",
                  ),
                  Divider(),
                  Gap(20),
                  CustomDropdownField<String>(
                    label: 'Deduction Type',
                    value: selectedDeduction,
                    items: deductionItems,
                    onChanged: (value) {
                      if (value != null) {
                        cubit.updateSelectedDeduction(value);
                      }
                    },
                  ),

                  MultilineInputField(label: 'Notes or Detail', controller: notesController, hintText: "Text note...", maxLines: 5),
                  Gap(10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.save, color: Colors.white),
                      label: Text(
                        "Save Deduction",
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.blue.shade700,
                        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: isLoading
                          ? null
                          : () async {
                              final empId = int.parse(empid);
                              final baseSalary = state.salary.isNotEmpty
                                  ? NumberFormat("#,##0.00", "en_US").format(state.salary[0].net_salary)
                                  : "N/A";
                              final baseSalaryCleaned = baseSalary.replaceAll(",", "").split(".").first;
                              final baseSalaryInt = int.tryParse(baseSalaryCleaned) ?? 0;
                              final note = notesController.text;
                              await cubit.createDeduction(empId, selectedDeduction, baseSalaryInt, note);
                              context.read<SalaryadminCubit>().getEmployeeById(empId.toString());
                            },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
