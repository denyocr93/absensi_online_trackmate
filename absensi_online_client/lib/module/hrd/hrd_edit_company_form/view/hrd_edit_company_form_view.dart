import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/button/action_button.dart';
import 'package:hyper_ui/shared/widget/form/memo_field/memo_field.dart';
import '../controller/hrd_edit_company_form_controller.dart';
import '../state/hrd_edit_company_form_state.dart';
import 'package:get_it/get_it.dart';

class HrdEditCompanyFormView extends StatefulWidget {
  const HrdEditCompanyFormView({Key? key}) : super(key: key);

  @override
  State<HrdEditCompanyFormView> createState() => _HrdEditCompanyFormViewState();
}

class _HrdEditCompanyFormViewState extends State<HrdEditCompanyFormView> {
  HrdEditCompanyFormController controller = HrdEditCompanyFormController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<HrdEditCompanyFormController>()) {
      GetIt.I.unregister<HrdEditCompanyFormController>();
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
          BlocListener<HrdEditCompanyFormController, HrdEditCompanyFormState>(
        listener: (context, state) {},
        child:
            BlocBuilder<HrdEditCompanyFormController, HrdEditCompanyFormState>(
          builder: (context, state) {
            final bloc = context.read<HrdEditCompanyFormController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    HrdEditCompanyFormController controller,
    HrdEditCompanyFormState state,
  ) {
    if (state.getCompanyByIdResponse == null) return LoadingScaffold();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Company'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                QImagePicker(
                  label: "Photo",
                  validator: Validator.required,
                  value: state.photo,
                  onChanged: (value) {
                    state.photo = value;
                  },
                ),
                QTextField(
                  label: "Company name",
                  validator: Validator.required,
                  value: state.companyName,
                  onChanged: (value) {
                    state.companyName = value;
                  },
                ),
                QMemoField(
                  label: "Address",
                  validator: Validator.required,
                  value: state.address,
                  onChanged: (value) {
                    state.address = value;
                  },
                ),
                QMemoField(
                  label: "Description",
                  validator: Validator.required,
                  value: state.description,
                  onChanged: (value) {
                    state.description = value;
                  },
                ),
                QLocationPicker2(
                  label: "Location",
                  latitude: state.latitude,
                  longitude: state.longitude,
                  onChanged: (latitude, longitude, address) {
                    state.latitude = latitude;
                    state.longitude = longitude;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: QTimePicker(
                        label: "Working hour start",
                        validator: Validator.required,
                        value: state.workingHourStart,
                        onChanged: (value) {
                          state.workingHourStart = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: QTimePicker(
                        label: "Working hour end",
                        validator: Validator.required,
                        value: state.workingHourEnd,
                        onChanged: (value) {
                          state.workingHourEnd = value;
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () => controller.save(),
      ),
    );
  }
}
