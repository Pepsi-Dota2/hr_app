import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/employees_model.dart';

part 'employeeadmin_state.dart';
part 'employeeadmin_cubit.freezed.dart';

class EmployeeadminCubit extends Cubit<EmployeeadminState> {
  EmployeeadminCubit() : super(EmployeeadminState());
  final dio = DioClient().instance();

  Future<void> getAllEmployee() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllEmployee);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<EmployeesModel> employees = jsonList.map((json) => EmployeesModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, employee: employees));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
