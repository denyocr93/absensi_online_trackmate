import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_dashboard_state.freezed.dart';

@unfreezed
class EmployeeDashboardState with _$EmployeeDashboardState {
  factory EmployeeDashboardState({
    @Default(0) int counter,
  }) = _EmployeeDashboardState;
}
