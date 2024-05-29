import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_company_by_id_response.freezed.dart';
part 'get_company_by_id_response.g.dart';

@freezed
class GetCompanyByIdResponse with _$GetCompanyByIdResponse {
  const factory GetCompanyByIdResponse({
    @JsonKey(name: 'data') Data? data,
  }) = _GetCompanyByIdResponse;

  factory GetCompanyByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCompanyByIdResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'photo') dynamic photo,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
    @JsonKey(name: 'working_hour_start') String? workingHourStart,
    @JsonKey(name: 'working_hour_end') String? workingHourEnd,
    @JsonKey(name: 'status') String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
