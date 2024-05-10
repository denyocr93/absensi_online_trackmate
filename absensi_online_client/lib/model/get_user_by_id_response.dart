import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_user_by_id_response.freezed.dart';
part 'get_user_by_id_response.g.dart';

@freezed
class GetUserByIdResponse with _$GetUserByIdResponse {
  const factory GetUserByIdResponse({
    Data? data,
  }) = _GetUserByIdResponse;

  factory GetUserByIdResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserByIdResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    int? id,
    String? name,
    String? email,
    dynamic emailVerifiedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? companyId,
    String? role,
    String? department,
    dynamic photo,
    String? status,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
