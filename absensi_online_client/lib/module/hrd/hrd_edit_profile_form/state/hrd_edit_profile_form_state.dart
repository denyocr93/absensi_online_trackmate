import 'package:freezed_annotation/freezed_annotation.dart';
part 'hrd_edit_profile_form_state.freezed.dart';

@unfreezed
class HrdEditProfileFormState with _$HrdEditProfileFormState {
  factory HrdEditProfileFormState({
    @Default(0) int counter,
  }) = _HrdEditProfileFormState;
}
