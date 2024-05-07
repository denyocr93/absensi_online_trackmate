import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/hrd_main_navigation_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HrdMainNavigationController extends Cubit<HrdMainNavigationState>
    implements IBlocBase {
  HrdMainNavigationController() : super(HrdMainNavigationState());

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
