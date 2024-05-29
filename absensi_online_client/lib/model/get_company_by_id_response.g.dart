// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_company_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCompanyByIdResponseImpl _$$GetCompanyByIdResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCompanyByIdResponseImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetCompanyByIdResponseImplToJson(
        _$GetCompanyByIdResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: (json['id'] as num?)?.toInt(),
      companyName: json['company_name'] as String?,
      description: json['description'] as String?,
      photo: json['photo'],
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      workingHourStart: json['working_hour_start'] as String?,
      workingHourEnd: json['working_hour_end'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_name': instance.companyName,
      'description': instance.description,
      'photo': instance.photo,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'working_hour_start': instance.workingHourStart,
      'working_hour_end': instance.workingHourEnd,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
