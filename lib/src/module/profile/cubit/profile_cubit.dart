import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/helper/body_builder_where.dart';
import 'package:hr_app/src/core/model/employees_model.dart';
import 'package:hr_app/src/core/model/user_auth_model.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileState());
  final dio = DioClient().instance();
  static const String imageHost = "http://10.216.236.59:5002";

  Future<void> loadImagePath() async {
    final prefs = await SharedPreferences.getInstance();
    final savedPath = prefs.getString('uploaded_image_path');
    if (savedPath != null && savedPath.isNotEmpty) {
      emit(state.copyWith(image: savedPath));
    }
  }

  Future<File?> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      return File(pickedFile.path);
    }
    return null;
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
      final imagePath = prefs.getString('uploaded_image_path') ?? '';
      emit(state.copyWith(user: user, status: Status.success, image: imagePath));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> logout() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('user_id');
      if (userId == null || userId.isEmpty) {
        emit(state.copyWith(status: Status.failure));
        return;
      }

      final body = ApiBodyBuilderWhere.buildWhere({"user_id": int.parse(userId)}, storeCode: "user_auth");
      final response = await dio.post(AppApiPath.signOut, data: body.toJson());

      if (response.statusCode == 200) {
        await prefs.remove('accessToken');
        await prefs.remove('emp_id');
        await prefs.remove('user_id');
        emit(state.copyWith(status: Status.success, user: null));
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
