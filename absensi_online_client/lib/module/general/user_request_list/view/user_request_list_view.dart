import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import '../controller/user_request_list_controller.dart';
import '../state/user_request_list_state.dart';
import 'package:get_it/get_it.dart';

class UserRequestListView extends StatefulWidget {
  final String requestType;
  UserRequestListView({
    Key? key,
    required this.requestType,
  }) : super(key: key);

  @override
  State<UserRequestListView> createState() => _UserRequestListViewState();
}

class _UserRequestListViewState extends State<UserRequestListView> {
  UserRequestListController controller = UserRequestListController();
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<UserRequestListController>()) {
      GetIt.I.unregister<UserRequestListController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.state.requestType = widget.requestType;
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );

    scrollController.addListener(() {
      var offset = scrollController.offset;
      var maxScroll = scrollController.position.maxScrollExtent;
      if (offset == maxScroll) {
        controller.nextPage();
        setState(() {});
      }
    });
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
      child: BlocListener<UserRequestListController, UserRequestListState>(
        listener: (context, state) {},
        child: BlocBuilder<UserRequestListController, UserRequestListState>(
          builder: (context, state) {
            final bloc = context.read<UserRequestListController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    UserRequestListController controller,
    UserRequestListState state,
  ) {
    // if (state.loading) return LoadingScaffold();
    var items = state.items;

    return RefreshIndicator(
      onRefresh: () {
        controller.reload();
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Request Histories'),
        ),
        body: Column(
          children: [
            QCategoryPicker(
              items: [
                {
                  "label": "Pending",
                  "value": "Pending",
                },
                {
                  "label": "Approved",
                  "value": "Approved",
                },
                {
                  "label": "Rejected",
                  "value": "Rejected",
                },
              ],
              value: state.status,
              validator: Validator.required,
              onChanged: (index, label, value, item) {
                controller.state.status = value;
                controller.reload();
              },
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(12.0),
                controller: scrollController,
                itemCount: items.length,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = items[index];
                  var isNotPending = item.status != "Pending";
                  return InkWell(
                    onTap: () {
                      Get.to(UserRequestDetailView(
                        item: item,
                      ));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 12.0,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12.0),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: primaryColor,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "${item.createdAt!.dMMMykkmmss}",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "${item.status}",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  item.user?.photo ??
                                      "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716044999/t3jxwmbgwelsvgsmby4c.png",
                                ),
                              ),
                              title: Text(item.requestType ?? "-"),
                              subtitle: Text(item.user?.name ?? "-"),
                              trailing: isEmployee
                                  ? null
                                  : Container(
                                      width: 80.0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              if (isNotPending) return;
                                              controller.approve(item);
                                            },
                                            child: CircleAvatar(
                                              radius: 16.0,
                                              backgroundColor: isNotPending
                                                  ? disabledColor
                                                  : successColor,
                                              child: Icon(
                                                Icons.check_outlined,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12.0,
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              if (isNotPending) return;
                                              //dialog alasan reject-nya
                                              await Get.to(
                                                  UserRequestRejectPopupView(
                                                item: item,
                                              ));
                                              if (state.rejectedNote == null)
                                                return;
                                              if (state.rejectedNote!.isEmpty)
                                                return;

                                              await controller.reject(item);
                                            },
                                            child: CircleAvatar(
                                              radius: 16.0,
                                              backgroundColor: isNotPending
                                                  ? disabledColor
                                                  : dangerColor,
                                              child: Icon(
                                                Icons.close,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12.0),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: primaryColor.withOpacity(0.9),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "${item.description}",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            await Get.to(UserRequestFormView(
              requestType: widget.requestType,
            ));
            controller.reload();
          },
        ),
      ),
    );
  }
}
