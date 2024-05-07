import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/navigation/qnavigation.dart';
import '../controller/hrd_main_navigation_controller.dart';
import '../state/hrd_main_navigation_state.dart';
import 'package:get_it/get_it.dart';

class HrdMainNavigationView extends StatefulWidget {
  const HrdMainNavigationView({Key? key}) : super(key: key);

  @override
  State<HrdMainNavigationView> createState() => _HrdMainNavigationViewState();
}

class _HrdMainNavigationViewState extends State<HrdMainNavigationView> {
  HrdMainNavigationController controller = HrdMainNavigationController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HrdMainNavigationController>()) {
      GetIt.I.unregister<HrdMainNavigationController>();
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
      child: BlocListener<HrdMainNavigationController, HrdMainNavigationState>(
        listener: (context, state) {},
        child: BlocBuilder<HrdMainNavigationController, HrdMainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<HrdMainNavigationController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HrdMainNavigationController controller,
    HrdMainNavigationState state,
  ) {
    return QNavigation(
      mode: QNavigationMode.nav2,
      pages: [
        HrdDashboardView(),
        HrdProfileView(),
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
