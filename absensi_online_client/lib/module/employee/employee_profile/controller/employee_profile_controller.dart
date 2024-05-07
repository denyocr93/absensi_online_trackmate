import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import '../state/employee_profile_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EmployeeProfileController extends Cubit<EmployeeProfileState>
    implements IBlocBase {
  EmployeeProfileController() : super(EmployeeProfileState());

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

  logout() async {
    showLoading();
    await AuthService().logout();
    hideLoading();
    Get.offAll(LoginView());
  }
}
