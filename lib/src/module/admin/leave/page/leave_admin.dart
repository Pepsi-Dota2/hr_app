import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/leave/cubit/leaveadmin_cubit.dart';
import 'package:hr_app/src/module/admin/leave/widget/card_leave.dart';
import 'package:intl/intl.dart';

@RoutePage()
class LeaveAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const LeaveAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => LeaveadminCubit()..getAllLeave(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LeaveadminCubit>();
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Leave",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      body: BlocBuilder<LeaveadminCubit, LeaveadminState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.leave.length,
            itemBuilder: (BuildContext context, int index) {
              final item = state.leave[index];
              return InkWell(
                onTap: () async {
                  await context.router.push(LeaveAdminDetailAdminRoute(userId: item.emp_id.toString()));
                  cubit.getAllLeave();
                },
                child: CardLeaveWidget(
                  leaveType: item.leave_type_name,
                  leaveState: item.leave_state,
                  leaveStartAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.leave_start_at)),
                  leaveEndAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.leave_end_at)),
                  detail: item.detail,
                  createdAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.created_at)),
                  userId: item.emp_id.toString(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
