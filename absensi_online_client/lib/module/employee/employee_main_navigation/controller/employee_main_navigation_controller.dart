import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/employee_main_navigation_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EmployeeMainNavigationController
    extends Cubit<EmployeeMainNavigationState> implements IBlocBase {
  EmployeeMainNavigationController() : super(EmployeeMainNavigationState());

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
