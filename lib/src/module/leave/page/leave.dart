import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/widget/elevented_button.dart';
import 'package:hr_app/src/module/admin/leave/widget/card_leave.dart';
import 'package:hr_app/src/module/leave/cubit/leave_cubit.dart';
import 'package:hr_app/src/module/leave/widget/card_approval.dart';
import 'package:intl/intl.dart';

@RoutePage()
class LeavePage extends StatelessWidget implements AutoRouteWrapper {
  const LeavePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => LeaveCubit()..getOneLeave(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LeaveCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue.shade50,
      body: BlocBuilder<LeaveCubit, LeaveState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ReusableElevatedButton(
                  icon: Icons.add,
                  label: "Leave",
                  onPressed: () async {
                    await context.router.push(CreateApproveRoute());
                    await cubit.getOneLeave();
                  },
                  borderRadius: 4,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.all(20),
                ),
                Gap(10),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.leaves.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = state.leaves[index];
                      return CardLeaveWidget(
                        leaveType: item.leave_type_name,
                        leaveState: item.leave_state,
                        leaveStartAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.leave_start_at)),
                        leaveEndAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.leave_end_at)),
                        detail: item.detail,
                        createdAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.created_at)),
                        userId: item.emp_id.toString(),
                      );
                    },
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
