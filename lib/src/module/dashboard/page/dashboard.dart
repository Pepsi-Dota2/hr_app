import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/home/cubit/home_cubit.dart';
import 'package:hr_app/src/module/home/page/home.dart';
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
        Container(),
        Container(),
      ],
      items: [
        PersistentBottomNavBarItem(icon: Icon(Icons.home), title: "home", activeColorPrimary: Colors.grey.shade500),
        PersistentBottomNavBarItem(icon: Icon(Icons.location_city), title: "gps", activeColorPrimary: Colors.grey.shade500),
        PersistentBottomNavBarItem(icon: Icon(Icons.person), title: "Profile", activeColorPrimary: Colors.grey.shade500),
      ],
      backgroundColor: Colors.grey.shade200,
      handleAndroidBackButtonPress: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style9,
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
