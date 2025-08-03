import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/auth_model.dart';
import 'package:hr_app/src/core/model/department_model.dart';
import 'package:hr_app/src/core/model/employees_model.dart';
import 'package:hr_app/src/core/model/position_model.dart';

part 'employeeadmin_state.dart';
part 'employeeadmin_cubit.freezed.dart';

class EmployeeadminCubit extends Cubit<EmployeeadminState> {
  EmployeeadminCubit() : super(EmployeeadminState());
  final dio = DioClient().instance();
  final TextEditingController empNameController = TextEditingController();
  final TextEditingController empDepartmentIdController = TextEditingController();
  final TextEditingController empPositionIdController = TextEditingController();
  final TextEditingController empBankAccountController = TextEditingController();
  final TextEditingController empImgController = TextEditingController();
  final TextEditingController empEmailController = TextEditingController();
  final TextEditingController empGenderController = TextEditingController();
  final TextEditingController empReligionController = TextEditingController();
  final TextEditingController empTelController = TextEditingController();
  final TextEditingController empBirthDateController = TextEditingController();
  final TextEditingController userIdController = TextEditingController();
  String? selectedDepartmentId;

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

  // get one employee
  Future<void> getOneEmployee(int id) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get("${AppApiPath.getOneEmployee}/$id");
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

  //create employee
  Future<void> createEmployee(EmployeesModel data) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final body = {
        "user_id": data.user_id,
        'emp_name': data.emp_name,
        'emp_department_id': data.emp_department_id,
        'emp_position_id': data.emp_position_id,
        'emp_bank_account': data.emp_bank_account,

        'emp_email': data.emp_email,
        'emp_gender': data.emp_gender,
        'emp_religion': data.emp_religion,
        'emp_tel': data.emp_tel,
        'emp_birth_date': data.emp_birth_date,
        'emp_day_off': data.emp_day_off.toList(),
      };
      final response = await dio.post(AppApiPath.createEmployee, data: body);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<EmployeesModel> employees = jsonList.map((json) => EmployeesModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, employee: employees));
      }
    } on DioException catch (e) {
      print(e.message);
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  //update employee
  Future<void> updateEmployee(int id, EmployeesModel data) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final body = {
        'emp_name': data.emp_name,
        'emp_department_id': data.emp_department_id,
        'emp_position_id': data.emp_position_id,
        'emp_bank_account': data.emp_bank_account,
        'emp_img': data.emp_img,
        'emp_email': data.emp_email,
        'emp_gender': data.emp_gender,
        'emp_religion': data.emp_religion,
        'emp_tel': data.emp_tel,
        'emp_birth_date': data.emp_birth_date,
      };
      final response = await dio.post("${AppApiPath.updateEmployee}/$id/update", data: body);
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

  //delete employee
  Future<void> deleteEmployee(int id) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.delete("${AppApiPath.deleteEmployee}/$id/delete");
      if (response.statusCode == 200) {
        emit(state.copyWith(status: Status.success));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getPosition() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllPosition);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<PositionModel> position = jsonList.map((json) => PositionModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, position: position));
      }
    } catch (e) {
      if (e is DioException && e.response != null) {
        print('Server response: ${e.response!.data}');
      }
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getAllDepartment() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllDepartment);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<DepartmentModel> department = jsonList.map((json) => DepartmentModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, departments: department));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getAllAuth() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllAuth);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<AuthModel> user = jsonList.map((json) => AuthModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, user: user, selectUser: user.first.user_id.toString()));
      }
    } on DioException catch (_) {
      emit(state.copyWith(status: Status.failure));
    } catch (_) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  void updateSelectedDepartment(String value) {
    emit(state.copyWith(selectDepartment: value));
  }

  void updateSelectedPosition(String value) {
    emit(state.copyWith(selectPosition: value));
  }

  void updateSelectUser(String value) {
    emit(state.copyWith(selectUser: value));
  }

  @override
  Future<void> close() {
    empNameController.dispose();
    empDepartmentIdController.dispose();
    empPositionIdController.dispose();
    empBankAccountController.dispose();
    empImgController.dispose();
    empEmailController.dispose();
    empGenderController.dispose();
    empReligionController.dispose();
    empTelController.dispose();
    empBirthDateController.dispose();
    userIdController.dispose();
    return super.close();
  }
}
