import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_profile_state.freezed.dart';

@unfreezed
class EmployeeProfileState with _$EmployeeProfileState {
  factory EmployeeProfileState({
    @Default(0) int counter,
  }) = _EmployeeProfileState;
}
