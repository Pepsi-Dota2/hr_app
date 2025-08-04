import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/leave_model.dart';

part 'leaveadmin_state.dart';
part 'leaveadmin_cubit.freezed.dart';

class LeaveadminCubit extends Cubit<LeaveadminState> {
  LeaveadminCubit() : super(LeaveadminState());
  final dio = DioClient().instance();
  Future<void> getAllLeave() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllleave);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<LeaveModel> leave = jsonList.map((json) => LeaveModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, leave: leave));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getOneEmployee(String userId) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get("${AppApiPath.getOneleave}/$userId/leave-detail/nofilter");
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<LeaveModel> leaveone = jsonList.map((json) => LeaveModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, leave: leaveone));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> updateLeaveEmployee(String userId, LeaveState leaveState, int? leaveId) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final body = {"leave_state": leaveState.name, "leave_detail_id": leaveId};
      final response = await dio.patch("${AppApiPath.updateLeave}/$userId/leave-detail", data: body);
      if (response.statusCode == 200) {
        await getOneEmployee(userId);
        emit(state.copyWith(status: Status.success));
      }
    } on DioException catch (e) {
      print("DioException: ${e.response?.data ?? e.message}");
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> deleteLeaveEmployee(int id) async {
    try {
      final response = await dio.delete("${AppApiPath.deleteLeave}/$id/delete");
      if (response.statusCode == 200) {
        await getOneEmployee(id.toString());
        emit(state.copyWith(status: Status.success));
      }
    } on DioException catch (e) {
      print("DioException: ${e.response?.data ?? e.message}");
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
