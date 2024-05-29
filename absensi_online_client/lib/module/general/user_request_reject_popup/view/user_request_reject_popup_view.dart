import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/get_user_request_history_response.dart';
import '../controller/user_request_reject_popup_controller.dart';
import '../state/user_request_reject_popup_state.dart';
import 'package:get_it/get_it.dart';

class UserRequestRejectPopupView extends StatefulWidget {
  final UserRequestHistory item;
  const UserRequestRejectPopupView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<UserRequestRejectPopupView> createState() =>
      _UserRequestRejectPopupViewState();
}

class _UserRequestRejectPopupViewState
    extends State<UserRequestRejectPopupView> {
  UserRequestRejectPopupController controller =
      UserRequestRejectPopupController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<UserRequestRejectPopupController>()) {
      GetIt.I.unregister<UserRequestRejectPopupController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.state.item = widget.item;
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
      child: BlocListener<UserRequestRejectPopupController,
          UserRequestRejectPopupState>(
        listener: (context, state) {},
        child: BlocBuilder<UserRequestRejectPopupController,
            UserRequestRejectPopupState>(
          builder: (context, state) {
            final bloc = context.read<UserRequestRejectPopupController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    UserRequestRejectPopupController controller,
    UserRequestRejectPopupState state,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text('Reject Request'),
              actions: [],
            ),
            body: SingleChildScrollView(
              controller: ScrollController(),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      if (controller.isFaceTraining) ...[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                widget.item.attachment ??
                                    "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                      ListItem3(
                        label: "Created by",
                        value: "${widget.item.user?.name}",
                      ),
                      ListItem3(
                        label: "Role",
                        value: "${widget.item.user?.role}",
                      ),
                      ListItem3(
                        label: "Department",
                        value: "${widget.item.user?.department}",
                      ),
                      ListItem3(
                        label: "Request type",
                        value: "${widget.item.requestType}",
                      ),
                      if (controller.isLeave ||
                          controller.isPermission ||
                          controller.isOvertime)
                        ListItem3(
                          label: "Amount",
                          value: "${widget.item.amount}",
                        ),
                      ListItem3(
                        label: "Request date",
                        value: "${widget.item.requestDate?.dMMMykkmmss}",
                      ),
                      ListItem3(
                        label: "Created at",
                        value: "${widget.item.createdAt?.dMMMykkmmss}",
                      ),
                      ListItem3(
                        label: "Description",
                        value: "${widget.item.description}",
                      ),
                      QMemoField(
                        label: "Rejected note",
                        validator: Validator.required,
                        value: state.rejectedNote,
                        onChanged: (value) {
                          state.rejectedNote = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: QActionButton(
              label: "Reject",
              onPressed: () {
                bool isNotValid = formKey.currentState!.validate() == false;
                if (isNotValid) {
                  return;
                }
                var userRequestListController =
                    GetIt.I<UserRequestListController>();
                userRequestListController.state.rejectedNote =
                    state.rejectedNote;
                Get.back();
              },
            ),
          ),
          Positioned(
            right: 20,
            top: 20,
            child: SafeArea(
              child: CircleAvatar(
                radius: 32.0,
                backgroundImage: NetworkImage(
                  widget.item.user?.photo ??
                      "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
