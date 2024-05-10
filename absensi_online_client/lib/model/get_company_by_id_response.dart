import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_company_by_id_response.freezed.dart';
part 'get_company_by_id_response.g.dart';

@freezed
class GetCompanyByIdResponse with _$GetCompanyByIdResponse {
  const factory GetCompanyByIdResponse({
    Data? data,
  }) = _GetCompanyByIdResponse;

  factory GetCompanyByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCompanyByIdResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? id,
    String? companyName,
    String? description,
    dynamic photo,
    String? address,
    double? latitude,
    double? longitude,
    String? workingHourStart,
    String? workingHourEnd,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
