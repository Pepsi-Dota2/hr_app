import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/employees_model.dart';
import 'package:hr_app/src/core/model/sarary_model.dart';
import 'package:hr_app/src/core/model/user_auth_model.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:shared_preferences/shared_preferences.dart';

part 'employee_state.dart';
part 'employee_cubit.freezed.dart';

class EmployeeCubit extends Cubit<EmployeeState> {
  EmployeeCubit() : super(EmployeeState());
  final dio = DioClient().instance();
  static const String imageHost = "http://10.216.236.59:5002";

  Future<File?> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
  }

  Future<void> loadImagePath() async {
    final prefs = await SharedPreferences.getInstance();
    final savedPath = prefs.getString('uploaded_image_path');
    if (savedPath != null && savedPath.isNotEmpty) {
      emit(state.copyWith(image: savedPath));
    }
  }

  Future<void> upLoadImage(File imageFile) async {
    try {
      emit(state.copyWith(status: Status.loading));
      String fileName = path.basename(imageFile.path);
      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(imageFile.path, filename: fileName, contentType: MediaType('image', 'jpeg')),
      });
      final response = await dio.post(AppApiPath.uploadImage, data: formData);
      if (response.statusCode == 200) {
        String imagePath = "";
        imagePath = '$imageHost${response.data['data']['path']}';
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('uploaded_image_path', imagePath);
        emit(state.copyWith(status: Status.success, image: imagePath));
      }
    } catch (e) {
      print('Upload error: $e');
      if (e is DioException && e.response != null) {
        print('Server response: ${e.response!.data}');
      }
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getMe() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('user_id');
      final response = await dio.get("${AppApiPath.getMe}/$userId");
      final user = EmployeesModel.fromJson(response.data['data']);
      emit(state.copyWith(user: user, status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getEmployee() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('user_id');
      final response = await dio.get("${AppApiPath.getEmployee}/$userId");
      final List data = response.data['data'];
      final employee = data.map((e) => EmployeesModel.fromJson(e)).toList();
      emit(state.copyWith(employee: employee, status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getSalary() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('user_id');
      final response = await dio.get("${AppApiPath.getSalary}/$userId/salary-counter");
      final List data = response.data['data'];
      final salaries = data.map((e) => SararyModel.fromJson(e)).toList();
      emit(state.copyWith(salary: salaries, status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
