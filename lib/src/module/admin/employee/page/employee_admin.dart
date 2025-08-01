import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/enum/enum.dart';
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
              return Card(
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
                ),
              );
            },
          );
        },
      ),
    );
  }
}
