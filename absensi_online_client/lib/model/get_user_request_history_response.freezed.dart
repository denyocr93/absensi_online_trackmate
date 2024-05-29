// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_request_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserRequestHistoryResponse _$GetUserRequestHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _GetUserRequestHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$GetUserRequestHistoryResponse {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<UserRequestHistory>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserRequestHistoryResponseCopyWith<GetUserRequestHistoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserRequestHistoryResponseCopyWith<$Res> {
  factory $GetUserRequestHistoryResponseCopyWith(
          GetUserRequestHistoryResponse value,
          $Res Function(GetUserRequestHistoryResponse) then) =
      _$GetUserRequestHistoryResponseCopyWithImpl<$Res,
          GetUserRequestHistoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
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
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$GetUserRequestHistoryResponseCopyWithImpl<$Res,
        $Val extends GetUserRequestHistoryResponse>
    implements $GetUserRequestHistoryResponseCopyWith<$Res> {
  _$GetUserRequestHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserRequestHistory>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserRequestHistoryResponseImplCopyWith<$Res>
    implements $GetUserRequestHistoryResponseCopyWith<$Res> {
  factory _$$GetUserRequestHistoryResponseImplCopyWith(
          _$GetUserRequestHistoryResponseImpl value,
          $Res Function(_$GetUserRequestHistoryResponseImpl) then) =
      __$$GetUserRequestHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
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
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$GetUserRequestHistoryResponseImplCopyWithImpl<$Res>
    extends _$GetUserRequestHistoryResponseCopyWithImpl<$Res,
        _$GetUserRequestHistoryResponseImpl>
    implements _$$GetUserRequestHistoryResponseImplCopyWith<$Res> {
  __$$GetUserRequestHistoryResponseImplCopyWithImpl(
      _$GetUserRequestHistoryResponseImpl _value,
      $Res Function(_$GetUserRequestHistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$GetUserRequestHistoryResponseImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserRequestHistory>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserRequestHistoryResponseImpl
    implements _GetUserRequestHistoryResponse {
  const _$GetUserRequestHistoryResponseImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<UserRequestHistory>? data,
      @JsonKey(name: "first_page_url") this.firstPageUrl,
      @JsonKey(name: "from") this.from,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      @JsonKey(name: "links") final List<Link>? links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      @JsonKey(name: "path") this.path,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      @JsonKey(name: "to") this.to,
      @JsonKey(name: "total") this.total})
      : _data = data,
        _links = links;

  factory _$GetUserRequestHistoryResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetUserRequestHistoryResponseImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<UserRequestHistory>? _data;
  @override
  @JsonKey(name: "data")
  List<UserRequestHistory>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String? firstPageUrl;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  @JsonKey(name: "links")
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "next_page_url")
  final dynamic nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'GetUserRequestHistoryResponse(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserRequestHistoryResponseImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserRequestHistoryResponseImplCopyWith<
          _$GetUserRequestHistoryResponseImpl>
      get copyWith => __$$GetUserRequestHistoryResponseImplCopyWithImpl<
          _$GetUserRequestHistoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserRequestHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _GetUserRequestHistoryResponse
    implements GetUserRequestHistoryResponse {
  const factory _GetUserRequestHistoryResponse(
          {@JsonKey(name: "current_page") final int? currentPage,
          @JsonKey(name: "data") final List<UserRequestHistory>? data,
          @JsonKey(name: "first_page_url") final String? firstPageUrl,
          @JsonKey(name: "from") final int? from,
          @JsonKey(name: "last_page") final int? lastPage,
          @JsonKey(name: "last_page_url") final String? lastPageUrl,
          @JsonKey(name: "links") final List<Link>? links,
          @JsonKey(name: "next_page_url") final dynamic nextPageUrl,
          @JsonKey(name: "path") final String? path,
          @JsonKey(name: "per_page") final int? perPage,
          @JsonKey(name: "prev_page_url") final dynamic prevPageUrl,
          @JsonKey(name: "to") final int? to,
          @JsonKey(name: "total") final int? total}) =
      _$GetUserRequestHistoryResponseImpl;

  factory _GetUserRequestHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$GetUserRequestHistoryResponseImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<UserRequestHistory>? get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  @JsonKey(name: "links")
  List<Link>? get links;
  @override
  @JsonKey(name: "next_page_url")
  dynamic get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$GetUserRequestHistoryResponseImplCopyWith<
          _$GetUserRequestHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserRequestHistory _$UserRequestHistoryFromJson(Map<String, dynamic> json) {
  return _UserRequestHistory.fromJson(json);
}

/// @nodoc
mixin _$UserRequestHistory {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "request_type")
  String? get requestType => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "request_date")
  DateTime? get requestDate => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "attachment")
  dynamic get attachment => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "update_status_date")
  DateTime? get updateStatusDate => throw _privateConstructorUsedError;
  @JsonKey(name: "approved_by")
  ApprovedBy? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "rejected_by")
  ApprovedBy? get rejectedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "rejected_note")
  String? get rejectedNote => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  ApprovedBy? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRequestHistoryCopyWith<UserRequestHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestHistoryCopyWith<$Res> {
  factory $UserRequestHistoryCopyWith(
          UserRequestHistory value, $Res Function(UserRequestHistory) then) =
      _$UserRequestHistoryCopyWithImpl<$Res, UserRequestHistory>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: "user") ApprovedBy? user});

  $ApprovedByCopyWith<$Res>? get approvedBy;
  $ApprovedByCopyWith<$Res>? get rejectedBy;
  $ApprovedByCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserRequestHistoryCopyWithImpl<$Res, $Val extends UserRequestHistory>
    implements $UserRequestHistoryCopyWith<$Res> {
  _$UserRequestHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? requestType = freezed,
    Object? amount = freezed,
    Object? requestDate = freezed,
    Object? description = freezed,
    Object? attachment = freezed,
    Object? status = freezed,
    Object? updateStatusDate = freezed,
    Object? approvedBy = freezed,
    Object? rejectedBy = freezed,
    Object? rejectedNote = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      requestDate: freezed == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updateStatusDate: freezed == updateStatusDate
          ? _value.updateStatusDate
          : updateStatusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as ApprovedBy?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as ApprovedBy?,
      rejectedNote: freezed == rejectedNote
          ? _value.rejectedNote
          : rejectedNote // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ApprovedBy?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get approvedBy {
    if (_value.approvedBy == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.approvedBy!, (value) {
      return _then(_value.copyWith(approvedBy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get rejectedBy {
    if (_value.rejectedBy == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.rejectedBy!, (value) {
      return _then(_value.copyWith(rejectedBy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApprovedByCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ApprovedByCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRequestHistoryImplCopyWith<$Res>
    implements $UserRequestHistoryCopyWith<$Res> {
  factory _$$UserRequestHistoryImplCopyWith(_$UserRequestHistoryImpl value,
          $Res Function(_$UserRequestHistoryImpl) then) =
      __$$UserRequestHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: "user") ApprovedBy? user});

  @override
  $ApprovedByCopyWith<$Res>? get approvedBy;
  @override
  $ApprovedByCopyWith<$Res>? get rejectedBy;
  @override
  $ApprovedByCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserRequestHistoryImplCopyWithImpl<$Res>
    extends _$UserRequestHistoryCopyWithImpl<$Res, _$UserRequestHistoryImpl>
    implements _$$UserRequestHistoryImplCopyWith<$Res> {
  __$$UserRequestHistoryImplCopyWithImpl(_$UserRequestHistoryImpl _value,
      $Res Function(_$UserRequestHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? requestType = freezed,
    Object? amount = freezed,
    Object? requestDate = freezed,
    Object? description = freezed,
    Object? attachment = freezed,
    Object? status = freezed,
    Object? updateStatusDate = freezed,
    Object? approvedBy = freezed,
    Object? rejectedBy = freezed,
    Object? rejectedNote = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_$UserRequestHistoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      requestDate: freezed == requestDate
          ? _value.requestDate
          : requestDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updateStatusDate: freezed == updateStatusDate
          ? _value.updateStatusDate
          : updateStatusDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as ApprovedBy?,
      rejectedBy: freezed == rejectedBy
          ? _value.rejectedBy
          : rejectedBy // ignore: cast_nullable_to_non_nullable
              as ApprovedBy?,
      rejectedNote: freezed == rejectedNote
          ? _value.rejectedNote
          : rejectedNote // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as ApprovedBy?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRequestHistoryImpl implements _UserRequestHistory {
  const _$UserRequestHistoryImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "request_type") this.requestType,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "request_date") this.requestDate,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "attachment") this.attachment,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "update_status_date") this.updateStatusDate,
      @JsonKey(name: "approved_by") this.approvedBy,
      @JsonKey(name: "rejected_by") this.rejectedBy,
      @JsonKey(name: "rejected_note") this.rejectedNote,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "user") this.user});

  factory _$UserRequestHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRequestHistoryImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "user_id")
  final int? userId;
  @override
  @JsonKey(name: "request_type")
  final String? requestType;
  @override
  @JsonKey(name: "amount")
  final double? amount;
  @override
  @JsonKey(name: "request_date")
  final DateTime? requestDate;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "attachment")
  final dynamic attachment;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "update_status_date")
  final DateTime? updateStatusDate;
  @override
  @JsonKey(name: "approved_by")
  final ApprovedBy? approvedBy;
  @override
  @JsonKey(name: "rejected_by")
  final ApprovedBy? rejectedBy;
  @override
  @JsonKey(name: "rejected_note")
  final String? rejectedNote;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "user")
  final ApprovedBy? user;

  @override
  String toString() {
    return 'UserRequestHistory(id: $id, userId: $userId, requestType: $requestType, amount: $amount, requestDate: $requestDate, description: $description, attachment: $attachment, status: $status, updateStatusDate: $updateStatusDate, approvedBy: $approvedBy, rejectedBy: $rejectedBy, rejectedNote: $rejectedNote, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRequestHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.requestType, requestType) ||
                other.requestType == requestType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.requestDate, requestDate) ||
                other.requestDate == requestDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.attachment, attachment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updateStatusDate, updateStatusDate) ||
                other.updateStatusDate == updateStatusDate) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.rejectedBy, rejectedBy) ||
                other.rejectedBy == rejectedBy) &&
            (identical(other.rejectedNote, rejectedNote) ||
                other.rejectedNote == rejectedNote) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      requestType,
      amount,
      requestDate,
      description,
      const DeepCollectionEquality().hash(attachment),
      status,
      updateStatusDate,
      approvedBy,
      rejectedBy,
      rejectedNote,
      createdAt,
      updatedAt,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestHistoryImplCopyWith<_$UserRequestHistoryImpl> get copyWith =>
      __$$UserRequestHistoryImplCopyWithImpl<_$UserRequestHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRequestHistoryImplToJson(
      this,
    );
  }
}

abstract class _UserRequestHistory implements UserRequestHistory {
  const factory _UserRequestHistory(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "user_id") final int? userId,
          @JsonKey(name: "request_type") final String? requestType,
          @JsonKey(name: "amount") final double? amount,
          @JsonKey(name: "request_date") final DateTime? requestDate,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "attachment") final dynamic attachment,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "update_status_date") final DateTime? updateStatusDate,
          @JsonKey(name: "approved_by") final ApprovedBy? approvedBy,
          @JsonKey(name: "rejected_by") final ApprovedBy? rejectedBy,
          @JsonKey(name: "rejected_note") final String? rejectedNote,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt,
          @JsonKey(name: "user") final ApprovedBy? user}) =
      _$UserRequestHistoryImpl;

  factory _UserRequestHistory.fromJson(Map<String, dynamic> json) =
      _$UserRequestHistoryImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "user_id")
  int? get userId;
  @override
  @JsonKey(name: "request_type")
  String? get requestType;
  @override
  @JsonKey(name: "amount")
  double? get amount;
  @override
  @JsonKey(name: "request_date")
  DateTime? get requestDate;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "attachment")
  dynamic get attachment;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "update_status_date")
  DateTime? get updateStatusDate;
  @override
  @JsonKey(name: "approved_by")
  ApprovedBy? get approvedBy;
  @override
  @JsonKey(name: "rejected_by")
  ApprovedBy? get rejectedBy;
  @override
  @JsonKey(name: "rejected_note")
  String? get rejectedNote;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "user")
  ApprovedBy? get user;
  @override
  @JsonKey(ignore: true)
  _$$UserRequestHistoryImplCopyWith<_$UserRequestHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApprovedBy _$ApprovedByFromJson(Map<String, dynamic> json) {
  return _ApprovedBy.fromJson(json);
}

/// @nodoc
mixin _$ApprovedBy {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified_at")
  dynamic get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "company_id")
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "department")
  String? get department => throw _privateConstructorUsedError;
  @JsonKey(name: "photo")
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApprovedByCopyWith<ApprovedBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovedByCopyWith<$Res> {
  factory $ApprovedByCopyWith(
          ApprovedBy value, $Res Function(ApprovedBy) then) =
      _$ApprovedByCopyWithImpl<$Res, ApprovedBy>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "email_verified_at") dynamic emailVerifiedAt,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "company_id") int? companyId,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "department") String? department,
      @JsonKey(name: "photo") String? photo,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$ApprovedByCopyWithImpl<$Res, $Val extends ApprovedBy>
    implements $ApprovedByCopyWith<$Res> {
  _$ApprovedByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? companyId = freezed,
    Object? role = freezed,
    Object? department = freezed,
    Object? photo = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApprovedByImplCopyWith<$Res>
    implements $ApprovedByCopyWith<$Res> {
  factory _$$ApprovedByImplCopyWith(
          _$ApprovedByImpl value, $Res Function(_$ApprovedByImpl) then) =
      __$$ApprovedByImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "email_verified_at") dynamic emailVerifiedAt,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "company_id") int? companyId,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "department") String? department,
      @JsonKey(name: "photo") String? photo,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class __$$ApprovedByImplCopyWithImpl<$Res>
    extends _$ApprovedByCopyWithImpl<$Res, _$ApprovedByImpl>
    implements _$$ApprovedByImplCopyWith<$Res> {
  __$$ApprovedByImplCopyWithImpl(
      _$ApprovedByImpl _value, $Res Function(_$ApprovedByImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? companyId = freezed,
    Object? role = freezed,
    Object? department = freezed,
    Object? photo = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ApprovedByImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApprovedByImpl implements _ApprovedBy {
  const _$ApprovedByImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "email_verified_at") this.emailVerifiedAt,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "company_id") this.companyId,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "department") this.department,
      @JsonKey(name: "photo") this.photo,
      @JsonKey(name: "status") this.status});

  factory _$ApprovedByImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovedByImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "email_verified_at")
  final dynamic emailVerifiedAt;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "company_id")
  final int? companyId;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "department")
  final String? department;
  @override
  @JsonKey(name: "photo")
  final String? photo;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'ApprovedBy(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, companyId: $companyId, role: $role, department: $department, photo: $photo, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovedByImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.emailVerifiedAt, emailVerifiedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      const DeepCollectionEquality().hash(emailVerifiedAt),
      createdAt,
      updatedAt,
      companyId,
      role,
      department,
      photo,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovedByImplCopyWith<_$ApprovedByImpl> get copyWith =>
      __$$ApprovedByImplCopyWithImpl<_$ApprovedByImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovedByImplToJson(
      this,
    );
  }
}

abstract class _ApprovedBy implements ApprovedBy {
  const factory _ApprovedBy(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "email_verified_at") final dynamic emailVerifiedAt,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "company_id") final int? companyId,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "department") final String? department,
      @JsonKey(name: "photo") final String? photo,
      @JsonKey(name: "status") final String? status}) = _$ApprovedByImpl;

  factory _ApprovedBy.fromJson(Map<String, dynamic> json) =
      _$ApprovedByImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "email_verified_at")
  dynamic get emailVerifiedAt;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "company_id")
  int? get companyId;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "department")
  String? get department;
  @override
  @JsonKey(name: "photo")
  String? get photo;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$ApprovedByImplCopyWith<_$ApprovedByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "active") bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "active") bool? active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl(
      {@JsonKey(name: "url") this.url,
      @JsonKey(name: "label") this.label,
      @JsonKey(name: "active") this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "active")
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {@JsonKey(name: "url") final String? url,
      @JsonKey(name: "label") final String? label,
      @JsonKey(name: "active") final bool? active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "active")
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
