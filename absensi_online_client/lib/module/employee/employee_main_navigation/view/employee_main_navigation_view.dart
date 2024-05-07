import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/navigation/qnavigation.dart';
import '../controller/employee_main_navigation_controller.dart';
import '../state/employee_main_navigation_state.dart';
import 'package:get_it/get_it.dart';

class EmployeeMainNavigationView extends StatefulWidget {
  const EmployeeMainNavigationView({Key? key}) : super(key: key);

  @override
  State<EmployeeMainNavigationView> createState() =>
      _EmployeeMainNavigationViewState();
}

class _EmployeeMainNavigationViewState
    extends State<EmployeeMainNavigationView> {
  EmployeeMainNavigationController controller =
      EmployeeMainNavigationController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<EmployeeMainNavigationController>()) {
      GetIt.I.unregister<EmployeeMainNavigationController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<EmployeeMainNavigationController,
          EmployeeMainNavigationState>(
        listener: (context, state) {},
        child: BlocBuilder<EmployeeMainNavigationController,
            EmployeeMainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<EmployeeMainNavigationController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    EmployeeMainNavigationController controller,
    EmployeeMainNavigationState state,
  ) {
    return QNavigation(
      mode: QNavigationMode.nav2,
      pages: [
        EmployeeDashboardView(),
        EmployeeProfileView(),
      ],
      menus: [
        NavigationMenu(
          icon: Icons.dashboard,
          label: "Dashboard",
        ),
        NavigationMenu(
          icon: Icons.person,
          label: "Profile",
        ),
      ],
    );
  }
}
