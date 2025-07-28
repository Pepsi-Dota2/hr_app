import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/module/work_time_record/cubit/work_time_record_cubit.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

@RoutePage()
class WorkTimeRecordPage extends StatelessWidget implements AutoRouteWrapper {
  const WorkTimeRecordPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => WorkTimeRecordCubit(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WorkTimeRecordCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Work Record", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue.shade50,
      body: BlocBuilder<WorkTimeRecordCubit, WorkTimeRecordState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<int>(
                stream: state.timer?.rawTime,
                initialData: 0,
                builder: (context, snap) {
                  final value = snap.data;
                  final displayTime = StopWatchTimer.getDisplayTime(value ?? 0);
                  return Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            displayTime,
                            style: TextStyle(fontSize: 40, fontFamily: 'Helvetica', fontWeight: FontWeight.bold),
                          ),
                        ),
                        Gap(10),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Colors.blue),
                            shape: WidgetStateProperty.all(const CircleBorder()),
                            minimumSize: WidgetStateProperty.all(const Size(120, 120)),
                            padding: WidgetStateProperty.all(const EdgeInsets.all(0)),
                          ),
                          onPressed: () {
                            state.isStart ? cubit.onStop() : cubit.onStart();
                          },
                          child: Icon(state.isStart ? Icons.stop : Icons.play_arrow, size: 80, color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
