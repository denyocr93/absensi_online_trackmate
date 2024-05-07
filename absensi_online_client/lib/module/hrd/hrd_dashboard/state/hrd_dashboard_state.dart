import 'package:freezed_annotation/freezed_annotation.dart';
part 'hrd_dashboard_state.freezed.dart';

@unfreezed
class HrdDashboardState with _$HrdDashboardState {
  factory HrdDashboardState({
    @Default(0) int counter,
  }) = _HrdDashboardState;
}
