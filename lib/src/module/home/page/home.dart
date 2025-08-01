import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/utils/format_time.dart';
import 'package:hr_app/src/module/home/cubit/home_cubit.dart';
import 'package:hr_app/src/module/home/widget/card.dart';
import 'package:hr_app/src/module/home/widget/card_feature.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..scheduleNextUpdate()
        ..getEndTime()
        ..getStartTime(),
      child: this,
    );
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
          print('🏗️ UI rebuilt with getStart: ${state.getStart}');
          final cubit = context.read<HomeCubit>();
          return RefreshIndicator(
            onRefresh: () async {
              await cubit.getStartTime();
              await cubit.getEndTime();
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ຂໍ້ມູນປະຈຳວັນ", style: TextStyle(fontWeight: FontWeight.bold)),
                  Gap(6),
                  CardWidget(
                    startTime: '9:00 - 12:00',
                    endTime: '13:00-18:00',
                    startWork: formatTime(state.getStart),
                    endWork: formatTime(state.endtime),
                    dateTime: state.date,
                  ),
                  Gap(10),

                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 1.0,
                      children: [
                        CardFeature(icon: Icons.people, label: 'employee', onTap: () => context.router.push(EmployeeRoute())),
                        CardFeature(icon: Icons.attach_money, label: 'Salary ', onTap: () => context.router.push(SalaryRoute())),
                        CardFeature(icon: Icons.calendar_today, label: 'Leave', onTap: () => context.router.push(LeaveRoute())),
                      ],
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
