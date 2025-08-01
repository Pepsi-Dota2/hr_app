import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/setting/cubit/setting_cubit.dart';
import 'package:hr_app/src/module/profile/widget/list_tile_widget.dart';

@RoutePage()
class SettingPage extends StatelessWidget implements AutoRouteWrapper {
  const SettingPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => SettingCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingCubit>();
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      body: BlocListener<SettingCubit, SettingState>(
        listenWhen: (prev, curr) => prev.status != curr.status && curr.status == Status.success && curr.user == null,
        listener: (context, state) {
          context.router.replace(const AuthRoute());
        },
        child: BlocBuilder<SettingCubit, SettingState>(
          builder: (context, state) {
            return Column(
              children: [ListTileWidget(name: "Logout", onTab: () => cubit.logout())],
            );
          },
        ),
      ),
    );
  }
}
