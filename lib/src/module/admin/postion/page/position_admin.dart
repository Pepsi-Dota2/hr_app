import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/widget/input_form.dart';
import 'package:hr_app/src/module/admin/postion/cubit/positionadmin_cubit.dart';
import 'package:hr_app/src/module/admin/postion/widget/position.dart';

@RoutePage()
class PositionAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const PositionAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => PositionadminCubit()..getPosition(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController onSearch = TextEditingController();
    final cubit = context.read<PositionadminCubit>();
    final nameController = TextEditingController();
    final salaryController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Position",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      floatingActionButton: BlocBuilder<PositionadminCubit, PositionadminState>(
        builder: (context, state) {
          return FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  insetPadding: const EdgeInsets.all(20),
                  backgroundColor: Colors.white,
                  elevation: 10,
                  child: Builder(
                    builder: (dialogContext) {
                      return Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Create Position", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 20),
                            Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  InputForm(
                                    controller: nameController,
                                    name: 'position_name',
                                    title: 'Position Name',
                                    hintText: 'Enter Position Name',
                                    borderRadius: 16,
                                  ),
                                  const SizedBox(height: 16),
                                  InputForm(
                                    controller: salaryController,
                                    name: 'position_salary',
                                    title: 'Position Salary',
                                    hintText: 'Enter Position Salary',
                                    borderRadius: 16,
                                    keyboardType: TextInputType.number,
                                  ),
                                  const SizedBox(height: 30),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton.icon(
                                      icon: const Icon(Icons.save, color: Colors.white),
                                      label: Text(
                                        "Save Position",
                                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        backgroundColor: Colors.blueAccent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                      ),
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          cubit.onCreatePosition(nameController.text, salaryController.text);
                                          context.router.pop();
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              );
            },
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
          );
        },
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: BlocBuilder<PositionadminCubit, PositionadminState>(
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
            child: BlocBuilder<PositionadminCubit, PositionadminState>(
              builder: (context, state) {
                if (state.status == Status.loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: state.filteredSalary.length,
                  itemBuilder: (BuildContext context, int index) {
                    final position = state.filteredSalary[index];
                    return PositionCard(position_name: position.position_name, position_salary: position.position_salary);
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
