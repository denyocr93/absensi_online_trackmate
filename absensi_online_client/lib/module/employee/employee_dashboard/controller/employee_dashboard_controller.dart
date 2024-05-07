import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/employee_dashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EmployeeDashboardController extends Cubit<EmployeeDashboardState>
    implements IBlocBase {
  EmployeeDashboardController() : super(EmployeeDashboardState());

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
