import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/widget/elevented_button.dart';
import 'package:hr_app/src/core/widget/form_date_picker.dart';
import 'package:hr_app/src/module/leave/cubit/leave_cubit.dart';
import 'package:hr_app/src/module/leave/widget/upload_image.dart';
import 'package:intl/intl.dart';

@RoutePage()
class CreateApprovePage extends StatelessWidget implements AutoRouteWrapper {
  const CreateApprovePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => LeaveCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController notesController = TextEditingController();
    final cubit = context.read<LeaveCubit>();
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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        TextFormField(
                          keyboardType: TextInputType.multiline,
                          controller: notesController,
                          maxLines: 5,
                          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))),
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
                      onPressed: () {},
                      borderRadius: 4,
                      backgroundColor: Colors.blue,
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
