import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/helper/body_builder.dart';
import 'package:hr_app/src/core/helper/body_builder_where.dart';
import 'package:hr_app/src/core/model/user_auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());
  final dio = DioClient().instance();

  Future<void> login(UserAuthModel data) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final user = UserAuthModel(user_email: data.user_email, user_password: data.user_password);
      final body = ApiBodyBuilderWhere.buildWhere(user.toJson(), storeCode: "user_auth");
      final response = await dio.post(AppApiPath.signIn, data: body.toJson());
      if (response.statusCode == 200) {
        final responseData = response.data['data'];
        final token = responseData['token'];
        final user_id = responseData['user_id'];
        final role = responseData['user_role_id'];
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('accessToken', token);
        await prefs.setString('user_id', user_id.toString());
        await prefs.setString('user_role_id', role.toString());
        final userAuthModel = UserAuthModel.fromJson(responseData);

        emit(state.copyWith(status: Status.success, user: userAuthModel));
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    } on DioException catch (dioError) {
      emit(state.copyWith(status: Status.failure));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> register(UserAuthModel data) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final user = UserAuthModel(user_email: data.user_email, user_password: data.user_password, user_name: data.user_name);
      final body = ApiBodyBuilder.build(user.toJson(), storeCode: "user_auth");
      final response = await dio.post(AppApiPath.signUp, data: body.toJson());
      if (response.statusCode == 200) {
        final userAuthModel = UserAuthModel.fromJson(response.data);
        emit(state.copyWith(status: Status.success, user: userAuthModel));
      }
    } on DioException catch (dioError) {
      emit(state.copyWith(status: Status.failure));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
