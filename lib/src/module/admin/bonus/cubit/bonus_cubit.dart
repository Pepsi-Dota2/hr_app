import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hr_app/src/core/enum/enum.dart';

part 'bonus_state.dart';
part 'bonus_cubit.freezed.dart';

class BonusCubit extends Cubit<BonusState> {
  BonusCubit() : super(BonusState());
}
