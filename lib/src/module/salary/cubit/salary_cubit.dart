import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/sarary_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'salary_state.dart';
part 'salary_cubit.freezed.dart';

class SalaryCubit extends Cubit<SalaryState> {
  SalaryCubit() : super(SalaryState(date: DateTime.now()));
  Timer? timer;
  final dio = DioClient().instance();

  void scheduleNextUpdate() {
    final now = DateTime.now();
    final tomorrow = DateTime(now.year, now.month, now.day + 1);
    final durationUntilMidnight = tomorrow.difference(now);

    timer?.cancel();
    timer = Timer(durationUntilMidnight, () {
      emit(state.copyWith(date: DateTime.now()));
      scheduleNextUpdate();
    });
  }

  Future<void> getSalary() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('emp_id');
      final response = await dio.get("${AppApiPath.getSalary}/$userId/salary-counter");
      final List data = response.data['data'];
      final salaries = data.map((e) => SararyModel.fromJson(e)).toList();
      emit(state.copyWith(salary: salaries, status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }
}
