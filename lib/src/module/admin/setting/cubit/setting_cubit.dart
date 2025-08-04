import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/helper/body_builder_where.dart';
import 'package:hr_app/src/core/model/employees_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingState());
  final dio = DioClient().instance();
  Future<void> logout() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('user_id');
      await prefs.remove('accessToken');
      await prefs.remove('accessToken');
      if (userId == null || userId.isEmpty) {
        emit(state.copyWith(status: Status.failure));
        return;
      }

      final body = ApiBodyBuilderWhere.buildWhere({"user_id": int.parse(userId)}, storeCode: "user_auth");
      final response = await dio.post(AppApiPath.signOut, data: body.toJson());

      if (response.statusCode == 200) {
        await prefs.remove('accessToken');
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
