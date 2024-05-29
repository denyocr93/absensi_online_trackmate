import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/user_request_reject_popup_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRequestRejectPopupController
    extends Cubit<UserRequestRejectPopupState> implements IBlocBase {
  UserRequestRejectPopupController() : super(UserRequestRejectPopupState());

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  increment() {
    state.counter++;
    emit(state.copyWith());
  }

  bool get isFaceTraining => state.item!.requestType == "FaceTraining";
  bool get isLeave => state.item!.requestType == "Leave";
  bool get isOvertime => state.item!.requestType == "Overtime";
  bool get isPermission => state.item!.requestType == "Permission";
}
