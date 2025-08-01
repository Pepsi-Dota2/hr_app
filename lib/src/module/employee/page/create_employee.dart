import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/module/employee/cubit/employee_cubit.dart';

@RoutePage()
class CreateEmployeePage extends StatelessWidget implements AutoRouteWrapper {
  const CreateEmployeePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => EmployeeCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Info", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
    );
  }
}
