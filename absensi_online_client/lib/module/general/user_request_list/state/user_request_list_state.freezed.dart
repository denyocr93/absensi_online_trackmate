// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserRequestListState {
  bool get loading => throw _privateConstructorUsedError;
  set loading(bool value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  GetUserRequestHistoryResponse? get getUserRequestHistoryResponse =>
      throw _privateConstructorUsedError;
  set getUserRequestHistoryResponse(GetUserRequestHistoryResponse? value) =>
      throw _privateConstructorUsedError;
  List<UserRequestHistory> get items => throw _privateConstructorUsedError;
  set items(List<UserRequestHistory> value) =>
      throw _privateConstructorUsedError;
  String? get requestType => throw _privateConstructorUsedError;
  set requestType(String? value) => throw _privateConstructorUsedError;
  String? get rejectedNote => throw _privateConstructorUsedError;
  set rejectedNote(String? value) => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  set status(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRequestListStateCopyWith<UserRequestListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestListStateCopyWith<$Res> {
  factory $UserRequestListStateCopyWith(UserRequestListState value,
          $Res Function(UserRequestListState) then) =
      _$UserRequestListStateCopyWithImpl<$Res, UserRequestListState>;
  @useResult
  $Res call(
      {bool loading,
      int page,
      GetUserRequestHistoryResponse? getUserRequestHistoryResponse,
      List<UserRequestHistory> items,
      String? requestType,
      String? rejectedNote,
      String? status});

  $GetUserRequestHistoryResponseCopyWith<$Res>?
      get getUserRequestHistoryResponse;
}

/// @nodoc
class _$UserRequestListStateCopyWithImpl<$Res,
        $Val extends UserRequestListState>
    implements $UserRequestListStateCopyWith<$Res> {
  _$UserRequestListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? page = null,
    Object? getUserRequestHistoryResponse = freezed,
    Object? items = null,
    Object? requestType = freezed,
    Object? rejectedNote = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      getUserRequestHistoryResponse: freezed == getUserRequestHistoryResponse
          ? _value.getUserRequestHistoryResponse
          : getUserRequestHistoryResponse // ignore: cast_nullable_to_non_nullable
              as GetUserRequestHistoryResponse?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserRequestHistory>,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedNote: freezed == rejectedNote
          ? _value.rejectedNote
          : rejectedNote // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetUserRequestHistoryResponseCopyWith<$Res>?
      get getUserRequestHistoryResponse {
    if (_value.getUserRequestHistoryResponse == null) {
      return null;
    }

    return $GetUserRequestHistoryResponseCopyWith<$Res>(
        _value.getUserRequestHistoryResponse!, (value) {
      return _then(
          _value.copyWith(getUserRequestHistoryResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRequestListStateImplCopyWith<$Res>
    implements $UserRequestListStateCopyWith<$Res> {
  factory _$$UserRequestListStateImplCopyWith(_$UserRequestListStateImpl value,
          $Res Function(_$UserRequestListStateImpl) then) =
      __$$UserRequestListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      int page,
      GetUserRequestHistoryResponse? getUserRequestHistoryResponse,
      List<UserRequestHistory> items,
      String? requestType,
      String? rejectedNote,
      String? status});

  @override
  $GetUserRequestHistoryResponseCopyWith<$Res>?
      get getUserRequestHistoryResponse;
}

/// @nodoc
class __$$UserRequestListStateImplCopyWithImpl<$Res>
    extends _$UserRequestListStateCopyWithImpl<$Res, _$UserRequestListStateImpl>
    implements _$$UserRequestListStateImplCopyWith<$Res> {
  __$$UserRequestListStateImplCopyWithImpl(_$UserRequestListStateImpl _value,
      $Res Function(_$UserRequestListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? page = null,
    Object? getUserRequestHistoryResponse = freezed,
    Object? items = null,
    Object? requestType = freezed,
    Object? rejectedNote = freezed,
    Object? status = freezed,
  }) {
    return _then(_$UserRequestListStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      getUserRequestHistoryResponse: freezed == getUserRequestHistoryResponse
          ? _value.getUserRequestHistoryResponse
          : getUserRequestHistoryResponse // ignore: cast_nullable_to_non_nullable
              as GetUserRequestHistoryResponse?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<UserRequestHistory>,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedNote: freezed == rejectedNote
          ? _value.rejectedNote
          : rejectedNote // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserRequestListStateImpl implements _UserRequestListState {
  _$UserRequestListStateImpl(
      {this.loading = true,
      this.page = 1,
      this.getUserRequestHistoryResponse = null,
      this.items = const [],
      this.requestType = null,
      this.rejectedNote = null,
      this.status = "Pending"});

  @override
  @JsonKey()
  bool loading;
  @override
  @JsonKey()
  int page;
  @override
  @JsonKey()
  GetUserRequestHistoryResponse? getUserRequestHistoryResponse;
  @override
  @JsonKey()
  List<UserRequestHistory> items;
  @override
  @JsonKey()
  String? requestType;
  @override
  @JsonKey()
  String? rejectedNote;
  @override
  @JsonKey()
  String? status;

  @override
  String toString() {
    return 'UserRequestListState(loading: $loading, page: $page, getUserRequestHistoryResponse: $getUserRequestHistoryResponse, items: $items, requestType: $requestType, rejectedNote: $rejectedNote, status: $status)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestListStateImplCopyWith<_$UserRequestListStateImpl>
      get copyWith =>
          __$$UserRequestListStateImplCopyWithImpl<_$UserRequestListStateImpl>(
              this, _$identity);
}

abstract class _UserRequestListState implements UserRequestListState {
  factory _UserRequestListState(
      {bool loading,
      int page,
      GetUserRequestHistoryResponse? getUserRequestHistoryResponse,
      List<UserRequestHistory> items,
      String? requestType,
      String? rejectedNote,
      String? status}) = _$UserRequestListStateImpl;

  @override
  bool get loading;
  set loading(bool value);
  @override
  int get page;
  set page(int value);
  @override
  GetUserRequestHistoryResponse? get getUserRequestHistoryResponse;
  set getUserRequestHistoryResponse(GetUserRequestHistoryResponse? value);
  @override
  List<UserRequestHistory> get items;
  set items(List<UserRequestHistory> value);
  @override
  String? get requestType;
  set requestType(String? value);
  @override
  String? get rejectedNote;
  set rejectedNote(String? value);
  @override
  String? get status;
  set status(String? value);
  @override
  @JsonKey(ignore: true)
  _$$UserRequestListStateImplCopyWith<_$UserRequestListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
