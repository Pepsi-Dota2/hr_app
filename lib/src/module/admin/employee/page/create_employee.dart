import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/model/employees_model.dart';
import 'package:hr_app/src/core/widget/form_dropdown.dart';
import 'package:hr_app/src/core/widget/input_form.dart';
import 'package:hr_app/src/module/admin/employee/cubit/employeeadmin_cubit.dart';
import 'package:intl/intl.dart';

@RoutePage()
class CreateEmployeeAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const CreateEmployeeAdminPage({super.key, @PathParam("id") this.id});
  final int? id;
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => EmployeeadminCubit()
        ..getAllDepartment()
        ..getPosition()
        ..getAllAuth()
        ..getOneEmployee(id ?? 0),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EmployeeadminCubit>();
    final _formKey = GlobalKey<FormBuilderState>();
    final isEdit = id != null;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEdit ? 'Edit Employee' : 'Create Employee',
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      backgroundColor: Colors.blue.shade50,
      body: BlocBuilder<EmployeeadminCubit, EmployeeadminState>(
        builder: (context, state) {
          final emp = state.employee.isNotEmpty ? state.employee[0] : null;
          cubit.empNameController.text = emp?.emp_name ?? '';
          cubit.empEmailController.text = emp?.emp_email ?? '';
          cubit.empBankAccountController.text = emp?.emp_bank_account ?? '';
          cubit.empReligionController.text = emp?.emp_religion ?? '';
          cubit.empTelController.text = emp?.emp_tel ?? "";
          cubit.empGenderController.text = emp?.emp_gender ?? '';
          final parsedDate = DateTime.tryParse(emp?.emp_birth_date ?? '');
          if (parsedDate != null) {
            cubit.empBirthDateController.text = DateFormat('yyyy-MM-dd').format(parsedDate);
          }
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _formKey.currentState?.patchValue({
              'emp_birth_date': emp?.emp_birth_date != null ? DateTime.tryParse(emp?.emp_birth_date ?? '') : null,
              'emp_day_off': emp?.emp_day_off.toList() ?? [],
              'emp_gender': emp?.emp_gender ?? '',
            });
          });

          return SingleChildScrollView(
            child: FormBuilder(
              initialValue: {
                'emp_birth_date': emp?.emp_birth_date != null ? DateTime.tryParse(emp!.emp_birth_date) : null,
                'emp_day_off': emp?.emp_day_off ?? [],
              },
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    if (!isEdit)
                      CustomDropdownField(
                        label: 'user',
                        value: state.selectUser.isEmpty ? null : state.selectUser,
                        items: state.user
                            .map((user) => DropdownMenuItem<String>(value: user.user_id.toString(), child: Text(user.user_name)))
                            .toList(),
                        onChanged: (value) {
                          if (value is String) {
                            cubit.updateSelectUser(value);
                          }
                        },
                      ),
                    InputForm(
                      controller: cubit.empEmailController,
                      name: 'emp_email',
                      label: 'email',
                      hintText: 'Enter your Email',
                      borderRadius: 16.0,
                      prefixIcon: const Icon(Icons.person),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    InputForm(
                      controller: cubit.empNameController,
                      name: 'emp_name',
                      label: 'name',
                      hintText: 'Enter your name',
                      borderRadius: 16.0,
                      prefixIcon: const Icon(Icons.person),
                    ),
                    Gap(20),
                    CustomDropdownField(
                      label: 'department',
                      value: state.selectDepartment.isEmpty ? null : state.selectDepartment,
                      items: state.departments
                          .map((dept) => DropdownMenuItem<String>(value: dept.department_id.toString(), child: Text(dept.department_name)))
                          .toList(),
                      onChanged: (value) {
                        if (value is String) {
                          cubit.updateSelectedDepartment(value);
                        }
                      },
                    ),

                    Gap(20),
                    CustomDropdownField<String>(
                      label: 'position',
                      value: state.selectPosition.isEmpty ? null : state.selectPosition,
                      items: state.position
                          .map((pst) => DropdownMenuItem<String>(value: pst.position_id.toString(), child: Text(pst.position_name)))
                          .toList(),
                      onChanged: (value) {
                        if (value is String) {
                          cubit.updateSelectedPosition(value);
                        }
                      },
                    ),
                    InputForm(
                      controller: cubit.empBankAccountController,
                      name: 'emp_bank_account',
                      label: 'Bank account',
                      hintText: 'Enter your bank account',
                      borderRadius: 16.0,
                      prefixIcon: const Icon(Icons.account_balance),
                    ),
                    InputForm(
                      controller: cubit.empReligionController,
                      name: 'emp_religion',
                      label: 'religion',
                      hintText: 'Enter your religion',
                      borderRadius: 16.0,
                      prefixIcon: const Icon(Icons.temple_buddhist),
                    ),
                    InputForm(
                      controller: cubit.empTelController,
                      name: 'emp_tel',
                      label: 'tel',
                      hintText: 'Enter your tel',
                      borderRadius: 16.0,
                      prefixIcon: const Icon(Icons.phone_android),
                    ),
                    FormBuilderRadioGroup<String>(
                      name: 'emp_gender',
                      decoration: const InputDecoration(labelText: 'Gender'),
                      options: const [
                        FormBuilderFieldOption(value: 'Male'),
                        FormBuilderFieldOption(value: 'Female'),
                        FormBuilderFieldOption(value: 'Other'),
                      ],
                      initialValue: emp?.emp_gender,
                    ),

                    Gap(20),
                    FormBuilderDateTimePicker(
                      name: 'emp_birth_date',
                      inputType: InputType.date,
                      decoration: const InputDecoration(
                        labelText: 'Birthdate',
                        prefixIcon: Icon(Icons.cake),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
                      ),
                      controller: cubit.empBirthDateController,
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      format: DateFormat('yyyy-MM-dd'),
                      initialValue: emp?.emp_birth_date != null ? DateTime.tryParse(emp?.emp_birth_date ?? '') : null,
                    ),
                    Gap(20),
                    FormBuilderCheckboxGroup(
                      name: 'emp_day_off',
                      decoration: const InputDecoration(
                        labelText: 'Day Off',
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                      ),
                      options: const [
                        FormBuilderFieldOption(value: 'monday'),
                        FormBuilderFieldOption(value: 'tuesday'),
                        FormBuilderFieldOption(value: 'wednesday'),
                        FormBuilderFieldOption(value: 'thursday'),
                        FormBuilderFieldOption(value: 'friday'),
                        FormBuilderFieldOption(value: 'saturday'),
                        FormBuilderFieldOption(value: 'sunday'),
                      ],
                      initialValue: emp?.emp_day_off.toList() ?? [],
                    ),

                    Gap(20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.save, color: Colors.white),
                        label: Text(
                          "Save Deduction",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          backgroundColor: Colors.blue.shade700,
                          textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.white),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState?.saveAndValidate() ?? false) {
                            final formData = _formKey.currentState!.value;
                            final birthDate = formData['emp_birth_date'] as DateTime?;
                            final formattedBirthDate = birthDate != null ? DateFormat('yyyy-MM-dd').format(birthDate) : '';

                            final emp = EmployeesModel(
                              emp_name: cubit.empNameController.text,
                              emp_email: cubit.empEmailController.text,
                              emp_bank_account: cubit.empBankAccountController.text,
                              emp_tel: cubit.empTelController.text,
                              emp_religion: cubit.empReligionController.text,
                              emp_img: cubit.empImgController.text,
                              emp_gender: formData['emp_gender'] ?? '',
                              emp_day_off: List<String>.from(formData['emp_day_off'] ?? []),
                              emp_birth_date: formattedBirthDate,
                              emp_department_id: int.tryParse(cubit.state.selectDepartment) ?? 0,
                              emp_position_id: int.tryParse(cubit.state.selectPosition) ?? 0,
                              user_id: int.tryParse(cubit.state.selectUser) ?? 0,
                            );

                            if (id != null) {
                              await cubit.updateEmployee(id ?? 0, emp);
                              context.router.pop();
                            } else {
                              await cubit.createEmployee(emp);
                              context.router.pop();
                            }
                          } else {
                            debugPrint("Form validation failed");
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
