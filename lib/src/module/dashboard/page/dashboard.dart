import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/module/home/cubit/home_cubit.dart';
import 'package:hr_app/src/module/home/page/home.dart';
import 'package:hr_app/src/module/profile/cubit/profile_cubit.dart';
import 'package:hr_app/src/module/profile/page/profile.dart';
import 'package:hr_app/src/module/work_time_record/cubit/work_time_record_cubit.dart';
import 'package:hr_app/src/module/work_time_record/page/work_time_record.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: [
        BlocProvider<HomeCubit>(create: (_) => HomeCubit()..scheduleNextUpdate(), child: HomePage()),
        BlocProvider<WorkTimeRecordCubit>(create: (_) => WorkTimeRecordCubit(), child: WorkTimeRecordPage()),
        BlocProvider<ProfileCubit>(create: (_) => ProfileCubit()..getMe(), child: ProfilePage()),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.home), title: "home", activeColorPrimary: Colors.grey.shade500),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.fingerprint, color: Colors.white),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: Colors.blue,
          inactiveIcon: Icon(Icons.fingerprint, color: Colors.white),
          activeColorSecondary: Colors.white,
          iconSize: 40,
        ),
        PersistentBottomNavBarItem(icon: Icon(Icons.person), title: "Profile", activeColorPrimary: Colors.grey.shade500),
      ],
      backgroundColor: Colors.grey.shade200,
      handleAndroidBackButtonPress: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style15,
      animationSettings: NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(curve: Curves.linear, duration: const Duration(milliseconds: 200)),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
    );
  }
}
