import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/module/home/cubit/home_cubit.dart';
import 'package:hr_app/src/module/home/widget/card.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => HomeCubit()..scheduleNextUpdate(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue.shade50,
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final cubit = context.read<HomeCubit>();
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ຂໍ້ມູນປະຈຳວັນ", style: TextStyle(fontWeight: FontWeight.bold)),
                Gap(6),
                CardWidget(startTime: '9:00 - 12:00', endTime: '13:00-18:00', startWork: '9:00', endWork: '18:00', dateTime: state.date),
              ],
            ),
          );
        },
      ),
    );
  }
}
