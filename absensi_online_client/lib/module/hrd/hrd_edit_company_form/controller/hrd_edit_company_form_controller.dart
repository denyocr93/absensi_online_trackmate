import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/get_company_by_id_response.dart';
import 'package:hyper_ui/service/company_service/company_service.dart';
import '../state/hrd_edit_company_form_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class HrdEditCompanyFormController extends Cubit<HrdEditCompanyFormState>
    implements IBlocBase {
  HrdEditCompanyFormController() : super(HrdEditCompanyFormState());

  @override
  void initState() {
    //initState event
    getCurrentCompanyData();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  Data get data {
    return state.getCompanyByIdResponse!.data!;
  }

  //TODO: Check kenapa company_name-nya slalu null
  //TODO: Check kenapa working hour start dan end tidak tersimpan
  //TODO: Check di android apakah fitur change location sudah bekerja

  getCurrentCompanyData() async {
    state.getCompanyByIdResponse =
        await CompanyService().getCompanyByID(currentUserCompanyID!);
    printo(state.getCompanyByIdResponse!.data!.companyName.toString());

    state.photo = data.photo;
    state.companyName = data.companyName;
    state.address = data.address;
    state.description = data.description;
    state.latitude = data.latitude;
    state.longitude = data.longitude;
    state.workingHourStart = data.workingHourStart?.timeOfDay;
    state.workingHourEnd = data.workingHourEnd?.timeOfDay;
    emit(state.copyWith());
  }

  save() async {
    showLoading();
    await CompanyService().update(
      id: currentUserCompanyID!,
      photo: state.photo,
      companyName: state.companyName,
      address: state.address,
      description: state.description,
      latitude: state.latitude,
      longitude: state.longitude,
      workingHourStart: state.workingHourStart?.toString(),
      workingHourEnd: state.workingHourEnd?.toString(),
    );
    hideLoading();
    Get.back();
    ss("Update success");
  }
}
