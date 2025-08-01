import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(date: DateTime.now())) {
    getStartTime();
  }
  Timer? timer;

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

  Future<void> getStartTime() async {
    final prefs = await SharedPreferences.getInstance();
    final workstart = prefs.getString('created_at');
    if (workstart == null) return;
    emit(state.copyWith(getStart: workstart));
  }

  Future<void> getEndTime() async {
    final prefs = await SharedPreferences.getInstance();
    final workend = prefs.getString('updated_at');
    if (workend == null) return;
    emit(state.copyWith(endtime: workend));
  }

  Future<void> clearStartTime() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('created_at');
    emit(state.copyWith(getStart: ''));
  }

  Future<void> clearEnd() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('updated_at');
    emit(state.copyWith(getStart: ''));
  }

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }
}
