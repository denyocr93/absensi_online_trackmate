import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/get_user_request_history_response.dart';
import 'package:hyper_ui/service/user_request_history_service/user_request_history_service.dart';
import '../state/user_request_list_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserRequestListController extends Cubit<UserRequestListState>
    implements IBlocBase {
  UserRequestListController() : super(UserRequestListState());

  @override
  void initState() {
    //initState event
    getData();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  getData() async {
    state.loading = true;
    emit(state.copyWith());

    if (state.page == 1) {
      state.items = [];
    }

    var response = await UserRequestHistoryService().getHistories(
      page: state.page,
      requestType: state.requestType!,
      status: state.status!,
    );
    state.items = [...state.items, ...response.data!];

    state.loading = false;
    emit(state.copyWith());
  }

  nextPage() async {
    state.page++;
    getData();
  }

  reload() async {
    state.page = 1;
    getData();
  }

  Future<void> approve(UserRequestHistory item) async {
    showLoading();
    await UserRequestHistoryService().approve(id: item.id!);
    hideLoading();
    reload();
  }

  Future<void> reject(UserRequestHistory item) async {
    showLoading();
    await UserRequestHistoryService().reject(
      id: item.id!,
      rejectedNote: state.rejectedNote!,
    );
    hideLoading();
    reload();
  }
}
