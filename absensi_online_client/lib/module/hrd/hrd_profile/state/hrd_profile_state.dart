import 'package:freezed_annotation/freezed_annotation.dart';
part 'hrd_profile_state.freezed.dart';

@unfreezed
class HrdProfileState with _$HrdProfileState {
  factory HrdProfileState({
    @Default(0) int counter,
  }) = _HrdProfileState;
}
