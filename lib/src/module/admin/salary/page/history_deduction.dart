import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/module/admin/salary/cubit/salaryadmin_cubit.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HistoryDeductionAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const HistoryDeductionAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => SalaryadminCubit()..getDeduction(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Deduction Employee",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      body: BlocBuilder<SalaryadminCubit, SalaryadminState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.deduction.length,
            itemBuilder: (BuildContext context, int index) {
              final item = state.deduction[index];
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                leading: CircleAvatar(
                  backgroundColor: Colors.red.shade100,
                  child: Icon(Icons.remove_circle_outline, color: Colors.red.shade700),
                ),
                title: Text("Deduction: ${item.note}", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Text("Amount: ${NumberFormat("#,##0").format(item.amount)} ₭"),
                    Text("Employee ID: ${item.emp_id}"),
                  ],
                ),
                trailing: Text(
                  DateFormat('dd MMM yyyy').format(DateTime.parse(item.created_at)),
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
              );
              ;
            },
          );
        },
      ),
    );
  }
}
