import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_request_form_state.freezed.dart';

@unfreezed
class UserRequestFormState with _$UserRequestFormState {
  factory UserRequestFormState({
    //---
    @Default(0) int counter,
    @Default(null) String? attachment,
    @Default(null) String? description,
    @Default(null) String? requestType,
    @Default(null) double? amount,
    @Default(null) DateTime? fromDate,
    @Default(null) DateTime? toDate,
  }) = _UserRequestFormState;
}
