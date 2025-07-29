import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/module/employee/cubit/employee_cubit.dart';
import 'package:hr_app/src/module/employee/widget/employee_card_info.dart';
import 'package:hr_app/src/module/employee/widget/list_employee_info.dart';

@RoutePage()
class EmployeePage extends StatelessWidget implements AutoRouteWrapper {
  const EmployeePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => EmployeeCubit()..loadImagePath(), child: this);
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
          return Column(
            children: [
              EmployeeCardInfoWidget(
                onTab: () async {
                  final image = await cubit.pickImage();
                  if (image != null) {
                    await cubit.upLoadImage(image);
                  }
                },
                imagePath: state.image,
                username: "Jo",
                department: "Software",
                tel: "02055448899",
                email: "jo@gmail.com",
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ຊໍ້ມູນພື້ນຖານ",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                    ),
                    ListEmployeeInfoWidget(
                      empId: "EMP123",
                      empName: "John Doe",
                      empTel: "020-12345678",
                      empReligion: "Buddhism",
                      salary: "4,000,000",
                      accountBank: "2211336655444",
                      startWorking: "01/5/2025",
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
