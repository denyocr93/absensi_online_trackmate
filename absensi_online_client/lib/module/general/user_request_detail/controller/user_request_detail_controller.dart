import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/user_request_detail_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRequestDetailController extends Cubit<UserRequestDetailState>
    implements IBlocBase {
  UserRequestDetailController() : super(UserRequestDetailState());

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

  bool get isFaceTraining => state.requestType == "FaceTraining";
  bool get isLeave => state.requestType == "Leave";
  bool get isOvertime => state.requestType == "Overtime";
  bool get isPermission => state.requestType == "Permission";
}
