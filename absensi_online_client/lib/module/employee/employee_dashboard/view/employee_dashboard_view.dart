import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/employee_dashboard_controller.dart';
import '../state/employee_dashboard_state.dart';
import 'package:get_it/get_it.dart';

class EmployeeDashboardView extends StatefulWidget {
  const EmployeeDashboardView({Key? key}) : super(key: key);

  @override
  State<EmployeeDashboardView> createState() => _EmployeeDashboardViewState();
}

class _EmployeeDashboardViewState extends State<EmployeeDashboardView> {
  EmployeeDashboardController controller = EmployeeDashboardController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<EmployeeDashboardController>()) {
      GetIt.I.unregister<EmployeeDashboardController>();
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
      child: BlocListener<EmployeeDashboardController, EmployeeDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<EmployeeDashboardController, EmployeeDashboardState>(
          builder: (context, state) {
            final bloc = context.read<EmployeeDashboardController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    EmployeeDashboardController controller,
    EmployeeDashboardState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EmployeeDashboard'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => controller.increment(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
