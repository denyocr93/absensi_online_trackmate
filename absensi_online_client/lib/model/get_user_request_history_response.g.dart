// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_request_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserRequestHistoryResponseImpl
    _$$GetUserRequestHistoryResponseImplFromJson(Map<String, dynamic> json) =>
        _$GetUserRequestHistoryResponseImpl(
          currentPage: (json['current_page'] as num?)?.toInt(),
          data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => UserRequestHistory.fromJson(e as Map<String, dynamic>))
              .toList(),
          firstPageUrl: json['first_page_url'] as String?,
          from: (json['from'] as num?)?.toInt(),
          lastPage: (json['last_page'] as num?)?.toInt(),
          lastPageUrl: json['last_page_url'] as String?,
          links: (json['links'] as List<dynamic>?)
              ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
              .toList(),
          nextPageUrl: json['next_page_url'],
          path: json['path'] as String?,
          perPage: (json['per_page'] as num?)?.toInt(),
          prevPageUrl: json['prev_page_url'],
          to: (json['to'] as num?)?.toInt(),
          total: (json['total'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$GetUserRequestHistoryResponseImplToJson(
        _$GetUserRequestHistoryResponseImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$UserRequestHistoryImpl _$$UserRequestHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRequestHistoryImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      requestType: json['request_type'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      requestDate: json['request_date'] == null
          ? null
          : DateTime.parse(json['request_date'] as String),
      description: json['description'] as String?,
      attachment: json['attachment'],
      status: json['status'] as String?,
      updateStatusDate: json['update_status_date'] == null
          ? null
          : DateTime.parse(json['update_status_date'] as String),
      approvedBy: json['approved_by'] == null
          ? null
          : ApprovedBy.fromJson(json['approved_by'] as Map<String, dynamic>),
      rejectedBy: json['rejected_by'] == null
          ? null
          : ApprovedBy.fromJson(json['rejected_by'] as Map<String, dynamic>),
      rejectedNote: json['rejected_note'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : ApprovedBy.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserRequestHistoryImplToJson(
        _$UserRequestHistoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'request_type': instance.requestType,
      'amount': instance.amount,
      'request_date': instance.requestDate?.toIso8601String(),
      'description': instance.description,
      'attachment': instance.attachment,
      'status': instance.status,
      'update_status_date': instance.updateStatusDate?.toIso8601String(),
      'approved_by': instance.approvedBy,
      'rejected_by': instance.rejectedBy,
      'rejected_note': instance.rejectedNote,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

_$ApprovedByImpl _$$ApprovedByImplFromJson(Map<String, dynamic> json) =>
    _$ApprovedByImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      companyId: (json['company_id'] as num?)?.toInt(),
      role: json['role'] as String?,
      department: json['department'] as String?,
      photo: json['photo'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$ApprovedByImplToJson(_$ApprovedByImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'company_id': instance.companyId,
      'role': instance.role,
      'department': instance.department,
      'photo': instance.photo,
      'status': instance.status,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
