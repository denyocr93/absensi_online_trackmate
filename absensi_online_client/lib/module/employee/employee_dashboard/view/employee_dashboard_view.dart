import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:hyper_ui/shared/widget/carousel/carousel.dart';
import 'package:hyper_ui/shared/widget/scaffold/loading_scaffold.dart';
import '../controller/employee_dashboard_controller.dart';
import '../state/employee_dashboard_state.dart';
import 'package:get_it/get_it.dart';

class EmployeeDashboardView extends StatefulWidget {
  EmployeeDashboardView({Key? key}) : super(key: key);

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
    if (state.getUserByIdResponse == null) return LoadingScaffold();
    if (state.getAttendanceStatusTodayResponse == null)
      return LoadingScaffold();

    var item = state.getUserByIdResponse!.data!;
    return Scaffold(
      appBar: AppBar(
        title: Text('Trackmate'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 32.0,
                    backgroundImage: NetworkImage(
                      item.photo ??
                          "https://res.cloudinary.com/dotz74j1p/image/upload/v1715660683/no-image.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${item.name}",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${item.role}",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              QCarousel(
                type: CarouselType.type5,
                images: [
                  "https://plus.unsplash.com/premium_photo-1677529494239-682591edd525?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  "https://images.unsplash.com/photo-1606857521015-7f9fcf423740?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  "https://images.unsplash.com/photo-1542744173-8e7e53415bb0?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  "https://images.unsplash.com/photo-1556761175-5973dc0f32e7?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 400),
                      opacity: 1.0,
                      child: InkWell(
                        onTap: () {
                          if (controller.isCheckedInToday) return;
                          controller.checkIn();
                        },
                        child: EmployeeDashboardMainActionButton(
                          icon: Icons.login,
                          label: "Check In",
                          time: !controller.isCheckedInToday
                              ? "--:--"
                              : controller.checkInDate!.kkmm,
                          status: "-",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 400),
                      opacity: !controller.isCheckedInToday ? 0.6 : 1.0,
                      child: InkWell(
                        onTap: () {
                          if (!controller.isCheckedInToday) return;
                          controller.checkOut();
                        },
                        child: EmployeeDashboardMainActionButton(
                          icon: Icons.login,
                          label: "Check Out",
                          time: !controller.isCheckedOutToday
                              ? "--:--"
                              : controller.checkoutDate!.kkmm,
                          status: "-",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => controller.reset(),
                    child: Text(
                      "Reset",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    onTap: () => controller.loadData(),
                    child: Text(
                      "Check Attendance Status Today",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Builder(builder: (context) {
                List items = [
                  {
                    "icon": Icons.timer,
                    "label": "Cuti",
                    "on_tap": () => Get.to(UserRequestListView(
                          requestType: "Leave",
                        )),
                  },
                  {
                    "icon": Icons.nordic_walking,
                    "label": "Izin",
                    "on_tap": () => Get.to(UserRequestListView(
                          requestType: "Permission",
                        )),
                  },
                  {
                    "icon": Icons.timelapse,
                    "label": "Lembur",
                    "on_tap": () => Get.to(UserRequestListView(
                          requestType: "Overtime",
                        )),
                  },
                  {
                    "icon": Icons.face,
                    "label": "FaceTraining",
                    "on_tap": () => Get.to(UserRequestListView(
                          requestType: "FaceTraining",
                        )),
                  },
                  {
                    "icon": Icons.event,
                    "label": "Event",
                    "on_tap": () {},
                  },
                  {
                    "icon": Icons.calendar_month,
                    "label": "Kalender Absensi",
                    "on_tap": () {},
                  },
                  {
                    "icon": Icons.request_quote,
                    "label": "User Request",
                    "on_tap": () {},
                  },
                  {
                    "icon": Icons.request_quote,
                    "label": "xxx",
                    "on_tap": () {},
                  },
                ];

                return GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.0 / 1.1,
                    crossAxisCount: 4,
                    mainAxisSpacing: 6,
                    crossAxisSpacing: 6,
                  ),
                  itemCount: items.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = items[index];
                    return InkWell(
                      onTap: () => item["on_tap"](),
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                child: FittedBox(
                                  child: Icon(
                                    item["icon"],
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              item["label"],
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class EmployeeDashboardMainActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String time;
  final String status;
  const EmployeeDashboardMainActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.time,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
        border: Border.all(
          width: 1.0,
          color: Colors.grey[300]!,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 24.0,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            time,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            status,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
