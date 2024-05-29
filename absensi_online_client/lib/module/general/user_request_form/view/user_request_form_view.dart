import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/button/action_button.dart';
import 'package:hyper_ui/shared/widget/form/image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../controller/user_request_form_controller.dart';
import '../state/user_request_form_state.dart';
import 'package:get_it/get_it.dart';

class UserRequestFormView extends StatefulWidget {
  final String requestType;
  UserRequestFormView({
    Key? key,
    required this.requestType,
  }) : super(key: key);

  @override
  State<UserRequestFormView> createState() => _UserRequestFormViewState();
}

class _UserRequestFormViewState extends State<UserRequestFormView> {
  UserRequestFormController controller = UserRequestFormController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<UserRequestFormController>()) {
      GetIt.I.unregister<UserRequestFormController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.state.requestType = widget.requestType;
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
      child: BlocListener<UserRequestFormController, UserRequestFormState>(
        listener: (context, state) {},
        child: BlocBuilder<UserRequestFormController, UserRequestFormState>(
          builder: (context, state) {
            final bloc = context.read<UserRequestFormController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    UserRequestFormController controller,
    UserRequestFormState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.requestType} Request Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (controller.isFaceTraining)
                QImagePicker(
                  label: "Photo",
                  validator: Validator.required,
                  value: state.attachment,
                  onChanged: (value) {
                    state.attachment = value;
                  },
                ),
              if (controller.isLeave ||
                  controller.isPermission ||
                  controller.isOvertime) ...[
                QDropdownField(
                  label: "Request type",
                  validator: Validator.required,
                  items: [
                    if (!controller.isOvertime) ...[
                      {
                        "label": "Full days",
                        "value": 1,
                      },
                      {
                        "label": "Half days",
                        "value": 0.5,
                      },
                    ],
                    if (controller.isOvertime)
                      ...List.generate(
                        24,
                        (index) => {
                          "label": "${index + 1} hours",
                          "value": double.parse("${index + 1}"),
                        },
                      )
                  ],
                  value: state.amount,
                  onChanged: (value, label) {
                    state.amount = double.tryParse(value.toString());
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: QDatePicker(
                        label: "From",
                        validator: Validator.required,
                        value: state.fromDate,
                        onChanged: (value) {
                          state.fromDate = value;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: QDatePicker(
                        label: "To",
                        validator: Validator.required,
                        value: state.toDate,
                        onChanged: (value) {
                          state.toDate = value;
                        },
                      ),
                    ),
                  ],
                ),
              ],
              QMemoField(
                label: "Description",
                validator: Validator.required,
                value: state.description,
                onChanged: (value) {
                  state.description = value;
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () {
          bool isNotValid = formKey.currentState!.validate() == false;
          if (isNotValid) {
            se("Error nih?");
            return;
          }
          controller.save();
        },
      ),
    );
  }
}
