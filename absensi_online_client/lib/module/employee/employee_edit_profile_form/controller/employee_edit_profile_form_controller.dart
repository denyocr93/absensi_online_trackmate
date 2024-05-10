import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/service/user_service/user_service.dart';
import '../state/employee_edit_profile_form_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EmployeeEditProfileFormController
    extends Cubit<EmployeeEditProfileFormState> implements IBlocBase {
  EmployeeEditProfileFormController() : super(EmployeeEditProfileFormState());

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
    state.getUserByIdResponse = await UserService().getUserByID(currentUserID!);
    state.name = state.getUserByIdResponse!.data!.name;
    state.email = state.getUserByIdResponse!.data!.email;
    state.role = state.getUserByIdResponse!.data!.role;
    state.department = state.getUserByIdResponse!.data!.department;
    emit(state.copyWith());
  }

  save() async {
    showLoading();
    await UserService().update(
      id: currentUserID!,
      name: state.name!,
    );
    hideLoading();
    // GetIt.I<EmployeeEditProfileFormBloc>().getCurrentUserData();
    GetIt.I<EmployeeProfileController>().getCurrentUserData();
    // GetIt.I<EmployeeEditProfileFormViewModel>().getCurrentUserData();
    Get.back();
    ss("Update success!");
  }
}
