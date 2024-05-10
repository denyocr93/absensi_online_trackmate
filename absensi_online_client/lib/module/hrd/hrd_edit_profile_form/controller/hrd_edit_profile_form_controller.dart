import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/hrd_edit_profile_form_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HrdEditProfileFormController extends Cubit<HrdEditProfileFormState>
    implements IBlocBase {
  HrdEditProfileFormController() : super(HrdEditProfileFormState());

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
