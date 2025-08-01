import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/widget/elevented_button.dart';
import 'package:hr_app/src/module/leave/cubit/leave_cubit.dart';
import 'package:hr_app/src/module/leave/widget/card_approval.dart';

@RoutePage()
class LeavePage extends StatelessWidget implements AutoRouteWrapper {
  const LeavePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => LeaveCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ReusableElevatedButton(
              icon: Icons.add,
              label: "Leave",
              onPressed: () {
                context.router.push(CreateApproveRoute());
              },
              borderRadius: 4,
              backgroundColor: Colors.blue,
              padding: EdgeInsets.all(20),
            ),
            Gap(10),
            CardApprovalWidget(
              imagePath: '',
              approveText: "Approve",
              rejectText: "Reject",
              approverName: "John Doe",
              approverPosition: "Manager",
              approverDepartment: "HR Department",
              approverDate: "2025-07-31",
              approverTime: "09:00 AM",
              approverStatus: "approved",
            ),
          ],
        ),
      ),
    );
  }
}
