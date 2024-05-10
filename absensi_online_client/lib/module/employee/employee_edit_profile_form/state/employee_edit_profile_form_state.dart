import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/get_user_by_id_response.dart';
part 'employee_edit_profile_form_state.freezed.dart';

@unfreezed
class EmployeeEditProfileFormState with _$EmployeeEditProfileFormState {
  factory EmployeeEditProfileFormState({
    @Default(null) GetUserByIdResponse? getUserByIdResponse,
    @Default(null) String? name,
    @Default(null) String? email,
    @Default(null) String? role,
    @Default(null) String? department,
  }) = _EmployeeEditProfileFormState;
}
