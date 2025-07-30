import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/employee/cubit/employee_cubit.dart';
import 'package:hr_app/src/module/employee/widget/employee_card_info.dart';
import 'package:hr_app/src/module/employee/widget/list_employee_info.dart';
import 'package:intl/intl.dart';

@RoutePage()
class EmployeePage extends StatelessWidget implements AutoRouteWrapper {
  const EmployeePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => EmployeeCubit()
        ..loadImagePath()
        ..getEmployee()
        ..getSalary()
        ..getMe(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EmployeeCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Info", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: BlocBuilder<EmployeeCubit, EmployeeState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                EmployeeCardInfoWidget(
                  onTab: () async {
                    final image = await cubit.pickImage();
                    if (image != null) {
                      await cubit.upLoadImage(image);
                    }
                  },
                  imagePath: state.image,
                  username: state.user?.emp_name ?? "",
                  department: state.user?.position_name,
                  tel: state.user?.emp_tel,
                  email: state.user?.emp_email ?? "",
                ),
                Padding(
                  padding: EdgeInsetsGeometry.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListEmployeeInfoWidget(
                        empId: "EMP123",
                        empName: state.employee.isNotEmpty ? state.employee[0].emp_name : "N/A",
                        empTel: state.user?.emp_tel ?? "N/A",
                        empReligion: state.user?.emp_religion ?? "N/A",
                        empGender: state.employee.isNotEmpty ? state.employee[0].emp_gender : "N/A",
                        salary: state.salary.isNotEmpty ? state.salary[0].base_salary.toString() : "0",
                        departmentName: state.user?.department_name ?? "N/A",
                        departmentCode: state.user?.department_code ?? "N/A",
                        accountBank: state.employee.isNotEmpty ? state.employee[0].emp_bank_account : "N/A",
                        startWorking: state.employee.isNotEmpty && state.employee[0].created_at != null
                            ? DateFormat('dd/MM/yyyy').format(DateTime.parse(state.employee[0].created_at!))
                            : "N/A",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
