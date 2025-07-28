import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';

part 'work_time_record_state.dart';
part 'work_time_record_cubit.freezed.dart';

class WorkTimeRecordCubit extends Cubit<WorkTimeRecordState> {
  WorkTimeRecordCubit() : super(WorkTimeRecordState());
}
