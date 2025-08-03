import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/config/dio_client.dart';
import 'package:hr_app/src/core/constant/app_api_path.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/model/position_model.dart';

part 'positionadmin_state.dart';
part 'positionadmin_cubit.freezed.dart';

class PositionadminCubit extends Cubit<PositionadminState> {
  PositionadminCubit() : super(PositionadminState());
  final dio = DioClient().instance();
  Future<void> getPosition() async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get(AppApiPath.getAllPosition);
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<PositionModel> position = jsonList.map((json) => PositionModel.fromJson(json)).toList();
        emit(state.copyWith(status: Status.success, position: position, filterPosition: position));
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

    final filtered = state.position.where((item) {
      return item.position_name.toLowerCase().contains(lowerQuery);
    }).toList();

    emit(state.copyWith(filterPosition: filtered, searchQuery: query));
  }

  void clearSearch() {
    emit(state.copyWith(filterPosition: state.position, searchQuery: ''));
  }

  Future<void> onCreatePosition(String positionName, String positionSalary) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final body = {'position_name': positionName, 'position_salary': int.tryParse(positionSalary) ?? 0};
      final response = await dio.post(AppApiPath.createPosition, data: body);
      if (response.statusCode == 200) {
        await getPosition();
        emit(state.copyWith(status: Status.success));
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    } catch (e) {
      if (e is DioException && e.response != null) {
        print('Server response: ${e.response!.data}');
      }
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> onUpdatePosition(int id, String positionName, String positionSalary) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final body = {'position_name': positionName, 'position_salary': int.tryParse(positionSalary) ?? 0};
      final response = await dio.patch("${AppApiPath.updatePosition}/$id/update", data: body);
      if (response.statusCode == 200) {
        await getPosition();
        emit(state.copyWith(status: Status.success));
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    } catch (e) {
      if (e is DioException && e.response != null) {
        print('Server response: ${e.response!.data}');
      }
      emit(state.copyWith(status: Status.failure));
    }
  }

  Future<void> getOnePosition(int id) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.get("${AppApiPath.getOnePosition}/$id");
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<PositionModel> position = jsonList.map((json) => PositionModel.fromJson(json)).toList();
        final selectedDepartment = position.isNotEmpty ? position.first : null;
        emit(state.copyWith(status: Status.success, position: position, selecpositionted: selectedDepartment));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }

  // delete
  Future<void> deletePosition(int id) async {
    try {
      emit(state.copyWith(status: Status.loading));
      final response = await dio.delete("${AppApiPath.deletePosition}/$id/delete");
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = response.data['data'];
        final List<PositionModel> position = jsonList.map((json) => PositionModel.fromJson(json)).toList();
        await getPosition();
        emit(state.copyWith(status: Status.success, position: position));
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure));
    }
  }
}
