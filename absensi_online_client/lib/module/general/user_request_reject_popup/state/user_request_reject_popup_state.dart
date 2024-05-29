import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/get_user_request_history_response.dart';
part 'user_request_reject_popup_state.freezed.dart';

@unfreezed
class UserRequestRejectPopupState with _$UserRequestRejectPopupState {
  factory UserRequestRejectPopupState({
    @Default(0) int counter,
    @Default(null) UserRequestHistory? item,
    @Default(null) String? rejectedNote,
  }) = _UserRequestRejectPopupState;
}
