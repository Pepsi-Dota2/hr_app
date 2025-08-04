import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/leave_model.dart';
import 'package:hr_app/src/core/widget/elevented_button.dart';
import 'package:hr_app/src/core/widget/form_date_picker.dart';
import 'package:hr_app/src/module/leave/cubit/leave_cubit.dart';
import 'package:hr_app/src/module/leave/widget/upload_image.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class CreateApprovePage extends StatelessWidget implements AutoRouteWrapper {
  const CreateApprovePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => LeaveCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LeaveCubit>();
    final _formKey = GlobalKey<FormBuilderState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Leave", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue.shade50,
      body: BlocBuilder<LeaveCubit, LeaveState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: FormBuilder(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Leave Type",
                        style: TextStyle(fontSize: 14, color: Colors.grey[700], fontWeight: FontWeight.w500),
                      ),
                      FormBuilderTextField(
                        name: 'leave_type_name',
                        controller: cubit.leaveTypeController,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                      ),
                      Text(
                        "Start date",
                        style: TextStyle(fontSize: 14, color: Colors.grey[700], fontWeight: FontWeight.w500),
                      ),
                      CustomDateTimePicker(name: 'start_time', label: 'Start Time', format: DateFormat("dd MMM yyyy HH:mm")),
                      Gap(10),
                      Text(
                        "End date",
                        style: TextStyle(fontSize: 14, color: Colors.grey[700], fontWeight: FontWeight.w500),
                      ),
                      CustomDateTimePicker(name: 'end_time', label: 'End Time', format: DateFormat("dd MMM yyyy HH:mm")),
                      Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notes or Details",
                            style: TextStyle(fontSize: 14, color: Colors.grey[700], fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 6),
                          FormBuilderTextField(
                            name: 'detail',
                            controller: cubit.notesController,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            decoration: const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                          ),
                        ],
                      ),
                      Gap(10),
                      Text(
                        "Upload image",
                        style: TextStyle(fontSize: 14, color: Colors.grey[700], fontWeight: FontWeight.w500),
                      ),
                      UploadImageWidget(
                        imagePath: state.image,
                        onTab: () {
                          cubit.pickImage();
                        },
                        onClear: () {
                          cubit.clearImage();
                        },
                      ),
                      Gap(20),
                      ReusableElevatedButton(
                        icon: Icons.cloud_download,
                        label: "Create Leave",
                        onPressed: () async {
                          if (_formKey.currentState?.saveAndValidate() ?? false) {
                            final formValue = _formKey.currentState!.value;
                            final start = formValue['start_time'] as DateTime?;
                            final end = formValue['end_time'] as DateTime?;
                            final leaveStart = DateFormat('yyyy-MM-dd').format(start ?? DateTime.now());
                            final leaveEnd = DateFormat('yyyy-MM-dd').format(start ?? DateTime.now());
                            final prefs = await SharedPreferences.getInstance();
                            final empId = prefs.getString('emp_id');
                            final note = cubit.notesController.text;
                            final leaveType = cubit.leaveTypeController.text;

                            if (start == null || end == null) {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please select valid dates')));
                              return;
                            }

                            final leaveData = LeaveModel(
                              emp_id: int.tryParse(empId ?? '') ?? 0,
                              leave_type_name: leaveType,
                              leave_start_at: leaveStart,
                              leave_end_at: leaveEnd,
                              detail: note,
                              image: cubit.state.image,
                            );

                            await cubit.createLeave(leaveData);
                            context.router.pop();

                            if (context.mounted && cubit.state.status == Status.success) {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Leave request submitted successfully")));
                              context.router.pop();
                            }
                          }
                        },

                        borderRadius: 4,
                        backgroundColor: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
