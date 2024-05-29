import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_user_request_history_response.freezed.dart';
part 'get_user_request_history_response.g.dart';

@freezed
class GetUserRequestHistoryResponse with _$GetUserRequestHistoryResponse {
  const factory GetUserRequestHistoryResponse({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<UserRequestHistory>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    @JsonKey(name: "links") List<Link>? links,
    @JsonKey(name: "next_page_url") dynamic nextPageUrl,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
    @JsonKey(name: "to") int? to,
    @JsonKey(name: "total") int? total,
  }) = _GetUserRequestHistoryResponse;

  factory GetUserRequestHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserRequestHistoryResponseFromJson(json);
}

@freezed
class UserRequestHistory with _$UserRequestHistory {
  const factory UserRequestHistory({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "user_id") int? userId,
    @JsonKey(name: "request_type") String? requestType,
    @JsonKey(name: "amount") double? amount,
    @JsonKey(name: "request_date") DateTime? requestDate,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "attachment") dynamic attachment,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "update_status_date") DateTime? updateStatusDate,
    @JsonKey(name: "approved_by") ApprovedBy? approvedBy,
    @JsonKey(name: "rejected_by") ApprovedBy? rejectedBy,
    @JsonKey(name: "rejected_note") String? rejectedNote,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "user") ApprovedBy? user,
  }) = _UserRequestHistory;

  factory UserRequestHistory.fromJson(Map<String, dynamic> json) =>
      _$UserRequestHistoryFromJson(json);
}

@freezed
class ApprovedBy with _$ApprovedBy {
  const factory ApprovedBy({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "email_verified_at") dynamic emailVerifiedAt,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "company_id") int? companyId,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "department") String? department,
    @JsonKey(name: "photo") String? photo,
    @JsonKey(name: "status") String? status,
  }) = _ApprovedBy;

  factory ApprovedBy.fromJson(Map<String, dynamic> json) =>
      _$ApprovedByFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "label") String? label,
    @JsonKey(name: "active") bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
