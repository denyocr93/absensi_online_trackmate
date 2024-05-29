import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/service/user_service/user_service.dart';
import '../state/employee_dashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EmployeeDashboardController extends Cubit<EmployeeDashboardState>
    implements IBlocBase {
  EmployeeDashboardController() : super(EmployeeDashboardState());

  @override
  void initState() {
    //initState event
    getCurrentUserData();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  getCurrentUserData() async {
    state.getUserByIdResponse = null;
    emit(state.copyWith());

    state.getUserByIdResponse = await UserService().getUserByID(currentUserID!);
    emit(state.copyWith());
  }
}
