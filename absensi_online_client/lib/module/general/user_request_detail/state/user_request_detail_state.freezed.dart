// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserRequestDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  String? get requestType => throw _privateConstructorUsedError;
  set requestType(String? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRequestDetailStateCopyWith<UserRequestDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestDetailStateCopyWith<$Res> {
  factory $UserRequestDetailStateCopyWith(UserRequestDetailState value,
          $Res Function(UserRequestDetailState) then) =
      _$UserRequestDetailStateCopyWithImpl<$Res, UserRequestDetailState>;
  @useResult
  $Res call({int counter, String? requestType});
}

/// @nodoc
class _$UserRequestDetailStateCopyWithImpl<$Res,
        $Val extends UserRequestDetailState>
    implements $UserRequestDetailStateCopyWith<$Res> {
  _$UserRequestDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? requestType = freezed,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRequestDetailStateImplCopyWith<$Res>
    implements $UserRequestDetailStateCopyWith<$Res> {
  factory _$$UserRequestDetailStateImplCopyWith(
          _$UserRequestDetailStateImpl value,
          $Res Function(_$UserRequestDetailStateImpl) then) =
      __$$UserRequestDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, String? requestType});
}

/// @nodoc
class __$$UserRequestDetailStateImplCopyWithImpl<$Res>
    extends _$UserRequestDetailStateCopyWithImpl<$Res,
        _$UserRequestDetailStateImpl>
    implements _$$UserRequestDetailStateImplCopyWith<$Res> {
  __$$UserRequestDetailStateImplCopyWithImpl(
      _$UserRequestDetailStateImpl _value,
      $Res Function(_$UserRequestDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? requestType = freezed,
  }) {
    return _then(_$UserRequestDetailStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      requestType: freezed == requestType
          ? _value.requestType
          : requestType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserRequestDetailStateImpl implements _UserRequestDetailState {
  _$UserRequestDetailStateImpl({this.counter = 0, this.requestType = null});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  String? requestType;

  @override
  String toString() {
    return 'UserRequestDetailState(counter: $counter, requestType: $requestType)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestDetailStateImplCopyWith<_$UserRequestDetailStateImpl>
      get copyWith => __$$UserRequestDetailStateImplCopyWithImpl<
          _$UserRequestDetailStateImpl>(this, _$identity);
}

abstract class _UserRequestDetailState implements UserRequestDetailState {
  factory _UserRequestDetailState({int counter, String? requestType}) =
      _$UserRequestDetailStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  String? get requestType;
  set requestType(String? value);
  @override
  @JsonKey(ignore: true)
  _$$UserRequestDetailStateImplCopyWith<_$UserRequestDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
