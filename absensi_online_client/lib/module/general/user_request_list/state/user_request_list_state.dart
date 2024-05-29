import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/get_user_request_history_response.dart';
part 'user_request_list_state.freezed.dart';

@unfreezed
class UserRequestListState with _$UserRequestListState {
  factory UserRequestListState({
    @Default(true) bool loading,
    @Default(1) int page,
    @Default(null) GetUserRequestHistoryResponse? getUserRequestHistoryResponse,
    @Default([]) List<UserRequestHistory> items,
    @Default(null) String? requestType,
    @Default(null) String? rejectedNote,
    @Default("Pending") String? status,
  }) = _UserRequestListState;
}
