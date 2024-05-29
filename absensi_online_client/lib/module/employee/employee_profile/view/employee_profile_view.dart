import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/env.dart';
import 'package:hyper_ui/shared/widget/list/list_item.dart';
import '../controller/employee_profile_controller.dart';
import '../state/employee_profile_state.dart';
import 'package:get_it/get_it.dart';

class EmployeeProfileView extends StatefulWidget {
  EmployeeProfileView({Key? key}) : super(key: key);

  @override
  State<EmployeeProfileView> createState() => _EmployeeProfileViewState();
}

class _EmployeeProfileViewState extends State<EmployeeProfileView> {
  EmployeeProfileController controller = EmployeeProfileController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<EmployeeProfileController>()) {
      GetIt.I.unregister<EmployeeProfileController>();
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
      child: BlocListener<EmployeeProfileController, EmployeeProfileState>(
        listener: (context, state) {},
        child: BlocBuilder<EmployeeProfileController, EmployeeProfileState>(
          builder: (context, state) {
            final bloc = context.read<EmployeeProfileController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    EmployeeProfileController controller,
    EmployeeProfileState state,
  ) {
//CTRL+SHIFT+ALT+.

    if (state.getUserByIdResponse == null) return LoadingScaffold();
    var item = state.getUserByIdResponse!.data!;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  Builder(builder: (context) {
                    double size = 52.0;
                    return InkWell(
                      onTap: () {
                        Get.to(EmployeeEditProfileFormView());
                      },
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: size,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: size - 2,
                              child: CircleAvatar(
                                radius: size - 4,
                                backgroundImage: NetworkImage(
                                  item.photo ?? "",
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: CircleAvatar(
                              radius: 16.0,
                              backgroundColor: primaryColor.withOpacity(0.8),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    item.name ?? "-",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    item.email ?? "-",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            HS6(title: "GENERAL"),
            ListItem(
              prefixIcon: Icons.wallet,
              label: "25000",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: Icons.favorite_outline,
              label: "Blogs",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: Icons.password,
              label: "Change password",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: MdiIcons.starOutline,
              label: "Rate us",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: MdiIcons.starOutline,
              label: "My Reviews",
              onTap: () {},
            ),
            HS6(title: "ABOUT APP"),
            ListItem(
              prefixIcon: MdiIcons.informationSlabBoxOutline,
              label: "About App",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: MdiIcons.security,
              label: "Privacy Policy",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: MdiIcons.post,
              label: "Terms & Conditions",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: MdiIcons.chatQuestionOutline,
              label: "Help & Support",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: MdiIcons.phoneRingOutline,
              label: "Helpline Number",
              onTap: () {},
            ),
            HS6(title: "Settings"),
            ListItem(
              prefixIcon: MdiIcons.flagOutline,
              label: "App Language",
              onTap: () {},
            ),
            HS6(title: "DANGER ZONE"),
            ListItem(
              prefixIcon: MdiIcons.accountRemoveOutline,
              label: "Delete Account",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: MdiIcons.logout,
              label: "Logout",
              onTap: () => controller.logout(),
            ),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
