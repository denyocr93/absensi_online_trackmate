import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../state/user_request_form_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

/*
bloc
freezed
get_it
9code.id
*/
@singleton
class UserRequestFormController extends Cubit<UserRequestFormState>
    implements IBlocBase {
  UserRequestFormController() : super(UserRequestFormState());

  @override
  void initState() {
    //initState event
    state.amount = 1;
    state.fromDate = nowWithoutTime;
    state.toDate = nowWithoutTime;
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  bool get isFaceTraining => state.requestType == "FaceTraining";
  bool get isLeave => state.requestType == "Leave";
  bool get isOvertime => state.requestType == "Overtime";
  bool get isPermission => state.requestType == "Permission";

  save() async {
    showLoading();

    var diff = state.toDate!.difference(state.fromDate!).inDays;
    print("state.toDate: ${state.toDate}");
    print("state.fromDate: ${state.fromDate}");
    print("diff: $diff");
    if (diff >= 1) {
      // 0,1,2
      for (var i = 0; i <= diff; i++) {
        var requestDate = state.fromDate!.add(Duration(days: i));
        await UserRequestHistoryService().create(
          requestType: state.requestType!,
          description: state.description!,
          amount: state.amount!,
          requestDate: requestDate,
        );
      }
    } else {
      await UserRequestHistoryService().create(
        requestType: state.requestType!,
        attachment: isFaceTraining ? state.attachment! : null,
        description: state.description!,
        amount: isLeave ? state.amount! : null,
      );
    }
    hideLoading();
    Get.back();
    ss("Request has been sent");
  }
}
