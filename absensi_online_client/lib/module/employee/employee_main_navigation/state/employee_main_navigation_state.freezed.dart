// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_main_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeMainNavigationState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeMainNavigationStateCopyWith<EmployeeMainNavigationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeMainNavigationStateCopyWith<$Res> {
  factory $EmployeeMainNavigationStateCopyWith(
          EmployeeMainNavigationState value,
          $Res Function(EmployeeMainNavigationState) then) =
      _$EmployeeMainNavigationStateCopyWithImpl<$Res,
          EmployeeMainNavigationState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$EmployeeMainNavigationStateCopyWithImpl<$Res,
        $Val extends EmployeeMainNavigationState>
    implements $EmployeeMainNavigationStateCopyWith<$Res> {
  _$EmployeeMainNavigationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$EmployeeMainNavigationStateImplCopyWith<$Res>
    implements $EmployeeMainNavigationStateCopyWith<$Res> {
  factory _$$EmployeeMainNavigationStateImplCopyWith(
          _$EmployeeMainNavigationStateImpl value,
          $Res Function(_$EmployeeMainNavigationStateImpl) then) =
      __$$EmployeeMainNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$EmployeeMainNavigationStateImplCopyWithImpl<$Res>
    extends _$EmployeeMainNavigationStateCopyWithImpl<$Res,
        _$EmployeeMainNavigationStateImpl>
    implements _$$EmployeeMainNavigationStateImplCopyWith<$Res> {
  __$$EmployeeMainNavigationStateImplCopyWithImpl(
      _$EmployeeMainNavigationStateImpl _value,
      $Res Function(_$EmployeeMainNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$EmployeeMainNavigationStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EmployeeMainNavigationStateImpl
    implements _EmployeeMainNavigationState {
  _$EmployeeMainNavigationStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'EmployeeMainNavigationState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeMainNavigationStateImplCopyWith<_$EmployeeMainNavigationStateImpl>
      get copyWith => __$$EmployeeMainNavigationStateImplCopyWithImpl<
          _$EmployeeMainNavigationStateImpl>(this, _$identity);
}

abstract class _EmployeeMainNavigationState
    implements EmployeeMainNavigationState {
  factory _EmployeeMainNavigationState({int counter}) =
      _$EmployeeMainNavigationStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$EmployeeMainNavigationStateImplCopyWith<_$EmployeeMainNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
