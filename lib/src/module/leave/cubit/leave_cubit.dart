import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/leave_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'leave_state.dart';
part 'leave_cubit.freezed.dart';

class LeaveCubit extends Cubit<LeaveState> {
  LeaveCubit() : super(LeaveState());
  final dio = DioClient().instance();
  final TextEditingController notesController = TextEditingController();
  final TextEditingController leaveTypeController = TextEditingController();
  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      emit(state.copyWith(image: pickedFile.path));
    }
  }

  Future<void> createLeave(LeaveModel data) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final empIdStr = prefs.getString('emp_id');
      final empId = int.tryParse(empIdStr ?? '');
      final leaveStartAt = DateFormat('yyyy-MM-dd').format(DateTime.parse(data.leave_start_at));
      final leaveEndAt = DateFormat('yyyy-MM-dd').format(DateTime.parse(data.leave_end_at));
      if (empId == null) throw Exception('Invalid emp_id');

      final body = {
        "emp_id": empId,
        "leave_type_name": leaveTypeController.text,
        "leave_start_at": leaveStartAt,
        "leave_end_at": leaveEndAt,
        "detail": notesController.text,
        if (data.image.isNotEmpty) "image": data.image,
      };

      final response = await dio.post(AppApiPath.createleave, data: body);

      if (response.statusCode == 200) {
        emit(state.copyWith(status: Status.success));
      }
    } on DioException catch (e) {
      print("DioException: ${e.response?.data ?? e.message}");
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getOneLeave() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final empIdStr = prefs.getString('emp_id');
      final empId = int.tryParse(empIdStr ?? '');
      final response = await dio.get("${AppApiPath.getOneleave}/$empId/leave-detail/nofilter");
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<LeaveModel> leaveone = jsonList.map((json) => LeaveModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, leaves: leaveone));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  void clearImage() {
    emit(state.copyWith(image: null));
  }
}
