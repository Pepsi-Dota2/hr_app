import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/widget/input_form.dart';
import 'package:hr_app/src/module/admin/postion/cubit/positionadmin_cubit.dart';

@RoutePage()
class CreatePositionPage extends StatelessWidget implements AutoRouteWrapper {
  const CreatePositionPage({super.key, @PathParam('id') this.id});
  final int? id;
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => PositionadminCubit()..getOnePosition(id ?? 0), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PositionadminCubit>();
    final formKey = GlobalKey<FormState>();
    final isUpdate = id != null;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isUpdate ? 'Update Position' : 'Create Position',
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      body: BlocBuilder<PositionadminCubit, PositionadminState>(
        builder: (context, state) {
          final select = state.selecpositionted;
          final nameController = TextEditingController(text: select?.position_name);
          final salaryController = TextEditingController(text: select?.position_salary.toString());
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                            isUpdate ? 'Update Position' : 'Save Position',
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: Colors.blueAccent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                          onPressed: () async {
                            if (formKey.currentState!.validate() && isUpdate && id != null) {
                              cubit.onUpdatePosition(id!, nameController.text, salaryController.text);
                              await cubit.getPosition();
                            } else {
                              cubit.onCreatePosition(nameController.text, salaryController.text);
                              await cubit.getPosition();
                            }
                            context.router.pop();
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
    );
  }
}
