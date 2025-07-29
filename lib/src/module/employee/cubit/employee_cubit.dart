import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
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
}
