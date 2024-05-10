import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/get_company_by_id_response.dart';
part 'hrd_edit_company_form_state.freezed.dart';

@unfreezed
class HrdEditCompanyFormState with _$HrdEditCompanyFormState {
  factory HrdEditCompanyFormState({
    @Default(0) int counter,
    @Default(null) GetCompanyByIdResponse? getCompanyByIdResponse,
    @Default(null) String? photo,
    @Default(null) String? companyName,
    @Default(null) String? address,
    @Default(null) String? description,
    @Default(null) double? latitude,
    @Default(null) double? longitude,
    @Default(null) TimeOfDay? workingHourStart,
    @Default(null) TimeOfDay? workingHourEnd,
  }) = _HrdEditCompanyFormState;
}
