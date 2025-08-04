import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/widget/alert_dialog.dart';
import 'package:hr_app/src/module/admin/leave/cubit/leaveadmin_cubit.dart';
import 'package:hr_app/src/module/admin/leave/widget/card_leave_status.dart';
import 'package:intl/intl.dart';

@RoutePage()
class LeaveAdminDetailAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const LeaveAdminDetailAdminPage({super.key, @PathParam('userId') required this.userId});
  final String userId;
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => LeaveadminCubit()..getOneEmployee(userId), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LeaveadminCubit>();
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Leave Datail",
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
              return CardLeaveStatusWidget(
                leaveType: item.leave_type_name,
                leaveState: item.leave_state,
                leaveStartAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.leave_start_at)),
                leaveEndAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.leave_end_at)),
                detail: item.detail,
                createdAt: DateFormat('dd/MM/yyyy').format(DateTime.parse(item.created_at)),
                userId: item.emp_id.toString(),
                imageUrl: item.image,
                onApprove: () {
                  cubit.updateLeaveEmployee(userId, LeaveState.approved, item.leave_detail_id);
                  cubit.getOneEmployee(userId);
                },
                onReject: () {
                  cubit.updateLeaveEmployee(userId, LeaveState.rejected, item.leave_detail_id);
                  cubit.getOneEmployee(userId);
                },
                onDelete: () async {
                  final confirmed = await showConfirmDialog(
                    context: context,
                    title: "Are you sure?",
                    content: "This action will permanently delete the item.",
                  );
                  if (confirmed == true) {
                    await cubit.deleteLeaveEmployee(item.leave_detail_id);
                    cubit.getOneEmployee(userId);
                  } else {
                    print("Delete cancelled");
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}
