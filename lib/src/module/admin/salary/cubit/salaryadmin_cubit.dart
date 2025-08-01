import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/sarary_model.dart';

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
}
