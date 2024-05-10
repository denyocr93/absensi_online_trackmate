import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/hrd_edit_profile_form_controller.dart';
import '../state/hrd_edit_profile_form_state.dart';
import 'package:get_it/get_it.dart';

class HrdEditProfileFormView extends StatefulWidget {
  const HrdEditProfileFormView({Key? key}) : super(key: key);

  @override
  State<HrdEditProfileFormView> createState() => _HrdEditProfileFormViewState();
}

class _HrdEditProfileFormViewState extends State<HrdEditProfileFormView> {
  HrdEditProfileFormController controller = HrdEditProfileFormController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HrdEditProfileFormController>()) {
      GetIt.I.unregister<HrdEditProfileFormController>();
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
      child:
          BlocListener<HrdEditProfileFormController, HrdEditProfileFormState>(
        listener: (context, state) {},
        child:
            BlocBuilder<HrdEditProfileFormController, HrdEditProfileFormState>(
          builder: (context, state) {
            final bloc = context.read<HrdEditProfileFormController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HrdEditProfileFormController controller,
    HrdEditProfileFormState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HrdEditProfileForm'),
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
