import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/holiday_model.dart';

part 'holiday_admin_state.dart';
part 'holiday_admin_cubit.freezed.dart';

class HolidayAdminCubit extends Cubit<HolidayAdminState> {
  HolidayAdminCubit() : super(HolidayAdminState());
  final dio = DioClient().instance();
  Future<void> getHoliday() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get("${AppApiPath.getAllEmployeeHoliday}");

      if (response.statusCode == 200) {
        final responseBody = response.data;
        if (responseBody is Map<String, dynamic> && responseBody.containsKey('data')) {
          final rawHolidays = responseBody['data'] as List<dynamic>;
          final holidays = rawHolidays.map((e) => HolidayModel.fromJson(e as Map<String, dynamic>)).toList();
          emit(state.copyWith(status: Status.success, holiday: holidays));
        } else {
          print("Unexpected response structure: $responseBody");
          emit(state.copyWith(status: Status.failure));
        }
      } else {
        print("Failed to fetch holidays: ${response.statusCode}");
        emit(state.copyWith(status: Status.failure));
      }
    } catch (e, st) {
      print("Exception in getHoliday: $e\n$st");
      emit(state.copyWith(status: Status.failure));
    }
  }
}
