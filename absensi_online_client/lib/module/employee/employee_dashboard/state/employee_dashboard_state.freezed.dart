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
  $Res call({int counter});
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
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $Res call({int counter});
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
  }) {
    return _then(_$EmployeeDashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EmployeeDashboardStateImpl implements _EmployeeDashboardState {
  _$EmployeeDashboardStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'EmployeeDashboardState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeDashboardStateImplCopyWith<_$EmployeeDashboardStateImpl>
      get copyWith => __$$EmployeeDashboardStateImplCopyWithImpl<
          _$EmployeeDashboardStateImpl>(this, _$identity);
}

abstract class _EmployeeDashboardState implements EmployeeDashboardState {
  factory _EmployeeDashboardState({int counter}) = _$EmployeeDashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$EmployeeDashboardStateImplCopyWith<_$EmployeeDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
