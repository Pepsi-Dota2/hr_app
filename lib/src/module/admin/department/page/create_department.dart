import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/widget/form_text_area.dart';
import 'package:hr_app/src/core/widget/input_form.dart';
import 'package:hr_app/src/module/admin/department/cubit/departmentadmin_cubit.dart';

@RoutePage()
class CreateDepartmentPage extends StatelessWidget implements AutoRouteWrapper {
  const CreateDepartmentPage({super.key, @PathParam('id') this.id});
  final int? id;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => DepartmentadminCubit()..getOneDepartment(id ?? 0), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DepartmentadminCubit>();
    final isUpdate = id != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isUpdate ? 'Update Department' : 'Create Department',
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      backgroundColor: Colors.blue.shade50,
      body: BlocBuilder<DepartmentadminCubit, DepartmentadminState>(
        builder: (context, state) {
          final department = state.selected;
          final departmentNameController = TextEditingController(text: department?.department_name ?? '');
          final departmentCodeController = TextEditingController(text: department?.department_code ?? '');
          final descriptionController = TextEditingController(text: department?.description ?? '');

          return Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InputForm(
                    controller: departmentNameController,
                    name: 'department_name',
                    title: 'Department Name',
                    hintText: 'Enter Department Name',
                    borderRadius: 16,
                  ),
                  Gap(16),
                  InputForm(
                    controller: departmentCodeController,
                    name: 'department_code',
                    title: 'Department Code',
                    hintText: 'Enter Department Code',
                    borderRadius: 16,
                  ),
                  Gap(16),
                  MultilineInputField(label: 'Department Description', controller: descriptionController, hintText: "Text note...", maxLines: 5),
                  Gap(16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.save, color: Colors.white),
                      label: Text(
                        isUpdate ? 'Update Department' : 'Save Department',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.blue.shade700,
                        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () async {
                        if (isUpdate && id != null) {
                          await cubit.updateDepartment(id!, departmentNameController.text, departmentCodeController.text, descriptionController.text);
                        } else {
                          await cubit.createDepartment(departmentNameController.text, departmentCodeController.text, descriptionController.text);
                        }
                        context.router.pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
