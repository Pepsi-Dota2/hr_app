import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(date: DateTime.now()));
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

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }
}
