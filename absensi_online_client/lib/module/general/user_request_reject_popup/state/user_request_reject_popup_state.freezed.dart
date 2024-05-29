// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request_reject_popup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserRequestRejectPopupState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  UserRequestHistory? get item => throw _privateConstructorUsedError;
  set item(UserRequestHistory? value) => throw _privateConstructorUsedError;
  String? get rejectedNote => throw _privateConstructorUsedError;
  set rejectedNote(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRequestRejectPopupStateCopyWith<UserRequestRejectPopupState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestRejectPopupStateCopyWith<$Res> {
  factory $UserRequestRejectPopupStateCopyWith(
          UserRequestRejectPopupState value,
          $Res Function(UserRequestRejectPopupState) then) =
      _$UserRequestRejectPopupStateCopyWithImpl<$Res,
          UserRequestRejectPopupState>;
  @useResult
  $Res call({int counter, UserRequestHistory? item, String? rejectedNote});

  $UserRequestHistoryCopyWith<$Res>? get item;
}

/// @nodoc
class _$UserRequestRejectPopupStateCopyWithImpl<$Res,
        $Val extends UserRequestRejectPopupState>
    implements $UserRequestRejectPopupStateCopyWith<$Res> {
  _$UserRequestRejectPopupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? item = freezed,
    Object? rejectedNote = freezed,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as UserRequestHistory?,
      rejectedNote: freezed == rejectedNote
          ? _value.rejectedNote
          : rejectedNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserRequestHistoryCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $UserRequestHistoryCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRequestRejectPopupStateImplCopyWith<$Res>
    implements $UserRequestRejectPopupStateCopyWith<$Res> {
  factory _$$UserRequestRejectPopupStateImplCopyWith(
          _$UserRequestRejectPopupStateImpl value,
          $Res Function(_$UserRequestRejectPopupStateImpl) then) =
      __$$UserRequestRejectPopupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, UserRequestHistory? item, String? rejectedNote});

  @override
  $UserRequestHistoryCopyWith<$Res>? get item;
}

/// @nodoc
class __$$UserRequestRejectPopupStateImplCopyWithImpl<$Res>
    extends _$UserRequestRejectPopupStateCopyWithImpl<$Res,
        _$UserRequestRejectPopupStateImpl>
    implements _$$UserRequestRejectPopupStateImplCopyWith<$Res> {
  __$$UserRequestRejectPopupStateImplCopyWithImpl(
      _$UserRequestRejectPopupStateImpl _value,
      $Res Function(_$UserRequestRejectPopupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? item = freezed,
    Object? rejectedNote = freezed,
  }) {
    return _then(_$UserRequestRejectPopupStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as UserRequestHistory?,
      rejectedNote: freezed == rejectedNote
          ? _value.rejectedNote
          : rejectedNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserRequestRejectPopupStateImpl
    implements _UserRequestRejectPopupState {
  _$UserRequestRejectPopupStateImpl(
      {this.counter = 0, this.item = null, this.rejectedNote = null});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  UserRequestHistory? item;
  @override
  @JsonKey()
  String? rejectedNote;

  @override
  String toString() {
    return 'UserRequestRejectPopupState(counter: $counter, item: $item, rejectedNote: $rejectedNote)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestRejectPopupStateImplCopyWith<_$UserRequestRejectPopupStateImpl>
      get copyWith => __$$UserRequestRejectPopupStateImplCopyWithImpl<
          _$UserRequestRejectPopupStateImpl>(this, _$identity);
}

abstract class _UserRequestRejectPopupState
    implements UserRequestRejectPopupState {
  factory _UserRequestRejectPopupState(
      {int counter,
      UserRequestHistory? item,
      String? rejectedNote}) = _$UserRequestRejectPopupStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  UserRequestHistory? get item;
  set item(UserRequestHistory? value);
  @override
  String? get rejectedNote;
  set rejectedNote(String? value);
  @override
  @JsonKey(ignore: true)
  _$$UserRequestRejectPopupStateImplCopyWith<_$UserRequestRejectPopupStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
