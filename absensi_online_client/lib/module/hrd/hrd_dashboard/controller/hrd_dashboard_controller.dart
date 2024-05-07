import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/hrd_dashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HrdDashboardController extends Cubit<HrdDashboardState>
    implements IBlocBase {
  HrdDashboardController() : super(HrdDashboardState());

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
