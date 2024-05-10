// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserByIdResponseImpl _$$GetUserByIdResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserByIdResponseImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetUserByIdResponseImplToJson(
        _$GetUserByIdResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['emailVerifiedAt'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      companyId: (json['companyId'] as num?)?.toInt(),
      role: json['role'] as String?,
      department: json['department'] as String?,
      photo: json['photo'],
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'emailVerifiedAt': instance.emailVerifiedAt,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'companyId': instance.companyId,
      'role': instance.role,
      'department': instance.department,
      'photo': instance.photo,
      'status': instance.status,
    };
