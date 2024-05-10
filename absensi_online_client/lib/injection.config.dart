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
    as _i10;
import 'module/employee/employee_main_navigation/controller/employee_main_navigation_controller.dart'
    as _i5;
import 'module/employee/employee_profile/controller/employee_profile_controller.dart'
    as _i6;
import 'module/hrd/hrd_dashboard/controller/hrd_dashboard_controller.dart'
    as _i7;
import 'module/hrd/hrd_edit_company_form/controller/hrd_edit_company_form_controller.dart'
    as _i12;
import 'module/hrd/hrd_edit_profile_form/controller/hrd_edit_profile_form_controller.dart'
    as _i11;
import 'module/hrd/hrd_main_navigation/controller/hrd_main_navigation_controller.dart'
    as _i8;
import 'module/hrd/hrd_profile/controller/hrd_profile_controller.dart' as _i9;

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
    gh.singleton<_i5.EmployeeMainNavigationController>(
        () => _i5.EmployeeMainNavigationController());
    gh.singleton<_i6.EmployeeProfileController>(
        () => _i6.EmployeeProfileController());
    gh.singleton<_i7.HrdDashboardController>(
        () => _i7.HrdDashboardController());
    gh.singleton<_i8.HrdMainNavigationController>(
        () => _i8.HrdMainNavigationController());
    gh.singleton<_i9.HrdProfileController>(() => _i9.HrdProfileController());
    gh.singleton<_i10.EmployeeEditProfileFormController>(
        () => _i10.EmployeeEditProfileFormController());
    gh.singleton<_i11.HrdEditProfileFormController>(
        () => _i11.HrdEditProfileFormController());
    gh.singleton<_i12.HrdEditCompanyFormController>(
        () => _i12.HrdEditCompanyFormController());
    return this;
  }
}
