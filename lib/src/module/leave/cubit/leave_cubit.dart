import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:image_picker/image_picker.dart';

part 'leave_state.dart';
part 'leave_cubit.freezed.dart';

class LeaveCubit extends Cubit<LeaveState> {
  LeaveCubit() : super(LeaveState());
  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      emit(state.copyWith(image: pickedFile.path));
    }
  }

  void clearImage() {
    emit(state.copyWith(image: null));
  }
}
