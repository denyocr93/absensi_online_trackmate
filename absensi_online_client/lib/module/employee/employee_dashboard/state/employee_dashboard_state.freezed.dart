// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeDashboardState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  GetUserByIdResponse? get getUserByIdResponse =>
      throw _privateConstructorUsedError;
  set getUserByIdResponse(GetUserByIdResponse? value) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeDashboardStateCopyWith<EmployeeDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDashboardStateCopyWith<$Res> {
  factory $EmployeeDashboardStateCopyWith(EmployeeDashboardState value,
          $Res Function(EmployeeDashboardState) then) =
      _$EmployeeDashboardStateCopyWithImpl<$Res, EmployeeDashboardState>;
  @useResult
  $Res call({int counter, GetUserByIdResponse? getUserByIdResponse});

  $GetUserByIdResponseCopyWith<$Res>? get getUserByIdResponse;
}

/// @nodoc
class _$EmployeeDashboardStateCopyWithImpl<$Res,
        $Val extends EmployeeDashboardState>
    implements $EmployeeDashboardStateCopyWith<$Res> {
  _$EmployeeDashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? getUserByIdResponse = freezed,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      getUserByIdResponse: freezed == getUserByIdResponse
          ? _value.getUserByIdResponse
          : getUserByIdResponse // ignore: cast_nullable_to_non_nullable
              as GetUserByIdResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetUserByIdResponseCopyWith<$Res>? get getUserByIdResponse {
    if (_value.getUserByIdResponse == null) {
      return null;
    }

    return $GetUserByIdResponseCopyWith<$Res>(_value.getUserByIdResponse!,
        (value) {
      return _then(_value.copyWith(getUserByIdResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmployeeDashboardStateImplCopyWith<$Res>
    implements $EmployeeDashboardStateCopyWith<$Res> {
  factory _$$EmployeeDashboardStateImplCopyWith(
          _$EmployeeDashboardStateImpl value,
          $Res Function(_$EmployeeDashboardStateImpl) then) =
      __$$EmployeeDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, GetUserByIdResponse? getUserByIdResponse});

  @override
  $GetUserByIdResponseCopyWith<$Res>? get getUserByIdResponse;
}

/// @nodoc
class __$$EmployeeDashboardStateImplCopyWithImpl<$Res>
    extends _$EmployeeDashboardStateCopyWithImpl<$Res,
        _$EmployeeDashboardStateImpl>
    implements _$$EmployeeDashboardStateImplCopyWith<$Res> {
  __$$EmployeeDashboardStateImplCopyWithImpl(
      _$EmployeeDashboardStateImpl _value,
      $Res Function(_$EmployeeDashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? getUserByIdResponse = freezed,
  }) {
    return _then(_$EmployeeDashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      getUserByIdResponse: freezed == getUserByIdResponse
          ? _value.getUserByIdResponse
          : getUserByIdResponse // ignore: cast_nullable_to_non_nullable
              as GetUserByIdResponse?,
    ));
  }
}

/// @nodoc

class _$EmployeeDashboardStateImpl implements _EmployeeDashboardState {
  _$EmployeeDashboardStateImpl(
      {this.counter = 0, this.getUserByIdResponse = null});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  GetUserByIdResponse? getUserByIdResponse;

  @override
  String toString() {
    return 'EmployeeDashboardState(counter: $counter, getUserByIdResponse: $getUserByIdResponse)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeDashboardStateImplCopyWith<_$EmployeeDashboardStateImpl>
      get copyWith => __$$EmployeeDashboardStateImplCopyWithImpl<
          _$EmployeeDashboardStateImpl>(this, _$identity);
}

abstract class _EmployeeDashboardState implements EmployeeDashboardState {
  factory _EmployeeDashboardState(
      {int counter,
      GetUserByIdResponse? getUserByIdResponse}) = _$EmployeeDashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  GetUserByIdResponse? get getUserByIdResponse;
  set getUserByIdResponse(GetUserByIdResponse? value);
  @override
  @JsonKey(ignore: true)
  _$$EmployeeDashboardStateImplCopyWith<_$EmployeeDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
