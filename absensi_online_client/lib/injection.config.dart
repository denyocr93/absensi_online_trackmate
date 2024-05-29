// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/auth/login/controller/login_controller.dart' as _i3;
import 'module/employee/employee_dashboard/controller/employee_dashboard_controller.dart'
    as _i4;
import 'module/employee/employee_edit_profile_form/controller/employee_edit_profile_form_controller.dart'
    as _i5;
import 'module/employee/employee_main_navigation/controller/employee_main_navigation_controller.dart'
    as _i6;
import 'module/employee/employee_profile/controller/employee_profile_controller.dart'
    as _i7;
import 'module/general/user_request_detail/controller/user_request_detail_controller.dart'
    as _i8;
import 'module/general/user_request_form/controller/user_request_form_controller.dart'
    as _i9;
import 'module/general/user_request_list/controller/user_request_list_controller.dart'
    as _i10;
import 'module/general/user_request_reject_popup/controller/user_request_reject_popup_controller.dart'
    as _i16;
import 'module/hrd/hrd_dashboard/controller/hrd_dashboard_controller.dart'
    as _i11;
import 'module/hrd/hrd_edit_company_form/controller/hrd_edit_company_form_controller.dart'
    as _i12;
import 'module/hrd/hrd_edit_profile_form/controller/hrd_edit_profile_form_controller.dart'
    as _i13;
import 'module/hrd/hrd_main_navigation/controller/hrd_main_navigation_controller.dart'
    as _i14;
import 'module/hrd/hrd_profile/controller/hrd_profile_controller.dart' as _i15;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.LoginController>(() => _i3.LoginController());
    gh.singleton<_i4.EmployeeDashboardController>(
        () => _i4.EmployeeDashboardController());
    gh.singleton<_i5.EmployeeEditProfileFormController>(
        () => _i5.EmployeeEditProfileFormController());
    gh.singleton<_i6.EmployeeMainNavigationController>(
        () => _i6.EmployeeMainNavigationController());
    gh.singleton<_i7.EmployeeProfileController>(
        () => _i7.EmployeeProfileController());
    gh.singleton<_i8.UserRequestDetailController>(
        () => _i8.UserRequestDetailController());
    gh.singleton<_i9.UserRequestFormController>(
        () => _i9.UserRequestFormController());
    gh.singleton<_i10.UserRequestListController>(
        () => _i10.UserRequestListController());
    gh.singleton<_i11.HrdDashboardController>(
        () => _i11.HrdDashboardController());
    gh.singleton<_i12.HrdEditCompanyFormController>(
        () => _i12.HrdEditCompanyFormController());
    gh.singleton<_i13.HrdEditProfileFormController>(
        () => _i13.HrdEditProfileFormController());
    gh.singleton<_i14.HrdMainNavigationController>(
        () => _i14.HrdMainNavigationController());
    gh.singleton<_i15.HrdProfileController>(() => _i15.HrdProfileController());
    gh.singleton<_i16.UserRequestRejectPopupController>(
        () => _i16.UserRequestRejectPopupController());
    return this;
  }
}
