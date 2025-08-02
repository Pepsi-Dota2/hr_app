import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/department/cubit/departmentadmin_cubit.dart';
import 'package:hr_app/src/module/admin/department/widget/department_card.dart';

@RoutePage()
class DepartmentAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const DepartmentAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => DepartmentadminCubit()..getAllDepartment(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController onSearch = TextEditingController();
    final cubit = context.read<DepartmentadminCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Department",
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
          await context.router.push(CreateDepartmentRoute());
          cubit.getAllDepartment();
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: BlocBuilder<DepartmentadminCubit, DepartmentadminState>(
              builder: (context, state) {
                return TextField(
                  controller: onSearch,
                  onChanged: cubit.search,
                  decoration: InputDecoration(
                    hintText: "Search by department name...",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: state.searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              cubit.clearSearch();
                              onSearch.clear();
                            },
                          )
                        : null,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<DepartmentadminCubit, DepartmentadminState>(
              builder: (context, state) {
                if (state.status == Status.loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: state.filteredSalary.length,
                  itemBuilder: (BuildContext context, int index) {
                    final department = state.filteredSalary[index];
                    return DepartmentCard(
                      name: department.department_name,
                      code: department.department_code,
                      description: department.description,
                      onUpdate: () {
                        context.router.push(CreateDepartmentRoute(id: department.department_id));
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
