import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/get_user_by_id_response.dart';
part 'employee_dashboard_state.freezed.dart';

@unfreezed
class EmployeeDashboardState with _$EmployeeDashboardState {
  factory EmployeeDashboardState({
    @Default(0) int counter,
    @Default(null) GetUserByIdResponse? getUserByIdResponse,
  }) = _EmployeeDashboardState;
}
