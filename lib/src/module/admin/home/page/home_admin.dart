import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/home/widget/admin_card.dart';

@RoutePage()
class HomeAdminPage extends StatelessWidget {
  const HomeAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F9FC),
      appBar: AppBar(
        title: Text(
          "Admin Dashboard",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome, Admin 👋", style: GoogleFonts.poppins(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Manage your workspace effectively.", style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey.shade600)),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  AdminCard(
                    title: "Employees",
                    icon: Icons.work_outline,
                    color: Colors.green.shade600,
                    onTap: () {
                      context.router.push(EmployeeAdminRoute());
                    },
                  ),
                  AdminCard(
                    title: "Salary",
                    icon: Icons.money,
                    color: Colors.green.shade600,
                    onTap: () {
                      context.router.push(SalaryAdminRoute());
                    },
                  ),
                  AdminCard(
                    title: "Department",
                    icon: Icons.local_fire_department_sharp,
                    color: Colors.teal.shade700,
                    onTap: () {
                      context.router.push(DepartmentAdminRoute());
                    },
                  ),
                  AdminCard(title: "Position", icon: Icons.home, color: Colors.teal.shade700, onTap: () {}),
                  AdminCard(title: "Assign Work", icon: Icons.assignment_turned_in_outlined, color: Colors.orange.shade700, onTap: () {}),
                  AdminCard(title: "Reports", icon: Icons.bar_chart_outlined, color: Colors.teal.shade700, onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
