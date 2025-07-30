import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/profile/cubit/profile_cubit.dart';
import 'package:hr_app/src/module/profile/widget/card_user.dart';
import 'package:hr_app/src/module/profile/widget/list_tile_widget.dart';

@RoutePage()
class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const ProfilePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit()
        ..loadImagePath()
        ..getMe(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      body: BlocListener<ProfileCubit, ProfileState>(
        listenWhen: (prev, curr) => prev.status != curr.status && curr.status == Status.success && curr.user == null,
        listener: (context, state) {
          context.router.replace(const AuthRoute());
        },
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return Column(
              children: [
                Gap(10),
                CardUserWidget(
                  name: state.user?.emp_name ?? "",
                  imagePath: state.image,
                  position: state.user?.emp_email ?? "",
                  onTab: () async {
                    final image = await cubit.pickImage();
                    if (image != null) {
                      await cubit.upLoadImage(image);
                    }
                  },
                ),
                Gap(10),
                ListTileWidget(name: "Logout", onTab: () => cubit.logout()),
              ],
            );
          },
        ),
      ),
    );
  }
}
