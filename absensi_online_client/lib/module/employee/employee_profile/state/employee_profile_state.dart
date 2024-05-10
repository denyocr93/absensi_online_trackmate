import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/get_user_by_id_response.dart';
part 'employee_profile_state.freezed.dart';

@unfreezed
class EmployeeProfileState with _$EmployeeProfileState {
  factory EmployeeProfileState({
    @Default(0) int counter,
    @Default(null) GetUserByIdResponse? getUserByIdResponse,
  }) = _EmployeeProfileState;
}
