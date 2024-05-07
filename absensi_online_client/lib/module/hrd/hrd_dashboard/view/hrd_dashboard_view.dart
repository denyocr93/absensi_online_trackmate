import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/hrd_dashboard_controller.dart';
import '../state/hrd_dashboard_state.dart';
import 'package:get_it/get_it.dart';

class HrdDashboardView extends StatefulWidget {
  const HrdDashboardView({Key? key}) : super(key: key);

  @override
  State<HrdDashboardView> createState() => _HrdDashboardViewState();
}

class _HrdDashboardViewState extends State<HrdDashboardView> {
  HrdDashboardController controller = HrdDashboardController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HrdDashboardController>()) {
      GetIt.I.unregister<HrdDashboardController>();
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
      child: BlocListener<HrdDashboardController, HrdDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<HrdDashboardController, HrdDashboardState>(
          builder: (context, state) {
            final bloc = context.read<HrdDashboardController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HrdDashboardController controller,
    HrdDashboardState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HrdDashboard'),
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
