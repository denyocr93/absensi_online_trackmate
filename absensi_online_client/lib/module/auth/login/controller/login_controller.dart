import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/hrd/hrd_main_navigation/view/hrd_main_navigation_view.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import '../state/login_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class LoginController extends Cubit<LoginState> implements IBlocBase {
  LoginController() : super(LoginState());

  @override //anotasi override
  void initState() {
    //initState event
    // state.email = "hrd1.alphawaveinc@demo.com";
    state.email = "user1.alphawaveinc@demo.com";
    state.password = "123456";
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  login() async {
    //
    try {
      bool isLoggedIn = await AuthService().login(
        email: state.email,
        password: state.password,
      );
      //snackbarSuccess
      ss("Login success");

      if (isEmployee) {
        Get.offAll(EmployeeMainNavigationView());
      } else if (isHRD) {
        Get.offAll(HrdMainNavigationView());
      }
    } on Exception catch (err) {
      //snackbarError
      se("Login failed");
    }
  }
}
