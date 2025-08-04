import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/widget/alert_dialog.dart';
import 'package:hr_app/src/core/widget/rounded_button.dart';
import 'package:hr_app/src/module/admin/employee/cubit/employeeadmin_cubit.dart';

@RoutePage()
class EmployeeAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const EmployeeAdminPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => EmployeeadminCubit()..getAllEmployee(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EmployeeadminCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Manage Employee",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      backgroundColor: Colors.blue.shade50,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.blueGrey,
        onPressed: () async {
          await context.router.push(CreateEmployeeAdminRoute());
          await cubit.getAllEmployee();
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: BlocBuilder<EmployeeadminCubit, EmployeeadminState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: state.employee.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (BuildContext context, int index) {
              final emp = state.employee[index];
              return InkWell(
                onTap: () async {
                  await context.router.push(UserDetailAdminRoute(id: emp.emp_id));
                  await cubit.getAllEmployee();
                },
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.blue.shade100,
                      child: CachedNetworkImage(
                        imageUrl: emp.emp_img,
                        fit: BoxFit.cover,
                        width: 120,
                        height: 120,
                        progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(value: progress.progress),
                        errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red),
                      ),
                    ),
                    title: Text(emp.emp_name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 4),
                        Text(emp.emp_email, style: const TextStyle(fontSize: 14, color: Colors.grey)),
                        const SizedBox(height: 2),
                        Text("📞 ${emp.emp_tel}", style: const TextStyle(fontSize: 14, color: Colors.grey)),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RoundedIconButton(
                          onPressed: () async {
                            await context.router.push(CreateEmployeeAdminRoute(id: state.employee[index].emp_id));
                            await cubit.getAllEmployee();
                          },
                          icon: Icons.edit,
                          borderColor: Colors.blue,
                          color: Colors.amber.withAlpha(60),
                          radius: 100,
                          width: 40,
                          height: 40,
                          size: 16,
                        ),
                        Gap(4),
                        RoundedIconButton(
                          onPressed: () async {
                            final confirmed = await showConfirmDialog(
                              context: context,
                              title: "Are you sure?",
                              content: "This action will permanently delete the item.",
                            );
                            if (confirmed == true) {
                              await cubit.deleteEmployee(state.employee[index].emp_id);
                              await cubit.getAllEmployee();
                            } else {
                              print("Delete cancelled");
                            }
                          },
                          icon: Icons.delete,
                          borderColor: Colors.blue,
                          color: Colors.red.withAlpha(60),
                          radius: 100,
                          width: 40,
                          height: 40,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
