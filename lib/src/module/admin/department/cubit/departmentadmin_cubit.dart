import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/department_model.dart';

part 'departmentadmin_state.dart';
part 'departmentadmin_cubit.freezed.dart';

class DepartmentadminCubit extends Cubit<DepartmentadminState> {
  DepartmentadminCubit() : super(DepartmentadminState());
  final dio = DioClient().instance();

  Future<void> getAllEmployee() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllDepartment);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<DepartmentModel> department = jsonList.map((json) => DepartmentModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, departments: department, filteredSalary: department));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  void search(String query) {
    final lowerQuery = query.toLowerCase();

    final filtered = state.departments.where((item) {
      return item.department_name.toLowerCase().contains(lowerQuery);
    }).toList();

    emit(state.copyWith(filteredSalary: filtered, searchQuery: query));
  }

  void clearSearch() {
    emit(state.copyWith(filteredSalary: state.departments, searchQuery: ''));
  }
}
