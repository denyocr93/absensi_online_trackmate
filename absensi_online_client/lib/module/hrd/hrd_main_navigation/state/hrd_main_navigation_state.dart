import 'package:freezed_annotation/freezed_annotation.dart';
part 'hrd_main_navigation_state.freezed.dart';

@unfreezed
class HrdMainNavigationState with _$HrdMainNavigationState {
  factory HrdMainNavigationState({
    @Default(0) int counter,
  }) = _HrdMainNavigationState;
}
