import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/module/admin/employee/cubit/employeeadmin_cubit.dart';
import 'package:hr_app/src/module/admin/employee/widget/card_employee.dart';

@RoutePage()
class UserDetailAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const UserDetailAdminPage({super.key, @PathParam("id") required this.id});
  final int id;
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => EmployeeadminCubit()..getOneEmployee(id), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Employee Detail",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      backgroundColor: Colors.blue.shade50,
      body: BlocBuilder<EmployeeadminCubit, EmployeeadminState>(
        builder: (context, state) {
          return Column(
            children: [
              EmployeeDetailCard(
                empName: state.employee.isNotEmpty ? state.employee[0].emp_name : "N/A",
                empEmail: state.employee.isNotEmpty ? state.employee[0].emp_email : "N/A",
                empTel: state.employee.isNotEmpty ? state.employee[0].emp_tel : "N/A",
                empBirthDate: state.employee.isNotEmpty ? state.employee[0].emp_birth_date : "N/A",
                createdAt: state.employee.isNotEmpty ? state.employee[0].created_at : "N/A",
                empBankAccount: state.employee.isNotEmpty ? state.employee[0].emp_bank_account : "N/A",
                empGender: state.employee.isNotEmpty ? state.employee[0].emp_gender : "N/A",
                empReligion: state.employee.isNotEmpty ? state.employee[0].emp_religion : "N/A",
                empDayOff: state.employee.isNotEmpty ? state.employee[0].emp_day_off : ["N/A", "N/A"],
              ),
            ],
          );
        },
      ),
    );
  }
}
