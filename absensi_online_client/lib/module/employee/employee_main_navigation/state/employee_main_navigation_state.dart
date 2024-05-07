import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_main_navigation_state.freezed.dart';

@unfreezed
class EmployeeMainNavigationState with _$EmployeeMainNavigationState {
  factory EmployeeMainNavigationState({
    @Default(0) int counter,
  }) = _EmployeeMainNavigationState;
}
