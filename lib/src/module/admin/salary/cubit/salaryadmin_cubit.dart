import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/deduction_model.dart';
import 'package:hr_app/src/core/model/employees_model.dart';
import 'package:hr_app/src/core/model/sarary_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'salaryadmin_state.dart';
part 'salaryadmin_cubit.freezed.dart';

class SalaryadminCubit extends Cubit<SalaryadminState> {
  SalaryadminCubit() : super(SalaryadminState());
  final dio = DioClient().instance();

  Future<void> getSalaryEmp() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllSalary);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<SararyModel> salary = jsonList.map((json) => SararyModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, salary: salary, filteredSalary: salary));
      }
    } catch (e) {
      if (e is DioException && e.response != null) {
        print('Server response: ${e.response!.data}');
      }
      emit(state.copyWith(status: Status.failure));
    }
  }

  void search(String query) {
    final lowerQuery = query.toLowerCase();

    final filtered = state.salary.where((item) {
      return item.emp_name.toLowerCase().contains(lowerQuery);
    }).toList();

    emit(state.copyWith(filteredSalary: filtered, searchQuery: query));
  }

  void clearSearch() {
    emit(state.copyWith(filteredSalary: state.salary, searchQuery: ''));
  }

  Future<void> getEmployeeById(String id) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get("${AppApiPath.getOneSalary}/$id/salary-counter");
      final List data = response.data['data'];
      final employee = data.map((e) => SararyModel.fromJson(e)).toList();
      emit(state.copyWith(salary: employee, status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> createDeduction(int empId, String deductionType, int baseSalary, String note) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final body = {"emp_id": empId, "deduction_type": deductionType, "base_salary": baseSalary, "note": note};
      print("Body $body");
      final response = await dio.post(AppApiPath.createDeduction, data: body);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<DeductionModel> deductions = jsonList.map((json) => DeductionModel.fromJson(json)).toList();
        await getEmployeeById(empId.toString());
        emit(state.copyWith(status: Status.success, deduction: deductions));
      }
      emit(state.copyWith(status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  void updateSelectedDeduction(String value) {
    emit(state.copyWith(selectedDeduction: value));
  }

  Future<void> getDeduction() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllDeduction);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<DeductionModel> salary = jsonList.map((json) => DeductionModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, deduction: salary));
      }
    } catch (e) {
      if (e is DioException && e.response != null) {
        print('Server response: ${e.response!.data}');
      }
      emit(state.copyWith(status: Status.failure));
    }
  }
}
