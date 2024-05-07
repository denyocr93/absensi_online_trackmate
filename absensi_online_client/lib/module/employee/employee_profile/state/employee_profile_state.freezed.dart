// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeProfileState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeProfileStateCopyWith<EmployeeProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeProfileStateCopyWith<$Res> {
  factory $EmployeeProfileStateCopyWith(EmployeeProfileState value,
          $Res Function(EmployeeProfileState) then) =
      _$EmployeeProfileStateCopyWithImpl<$Res, EmployeeProfileState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$EmployeeProfileStateCopyWithImpl<$Res,
        $Val extends EmployeeProfileState>
    implements $EmployeeProfileStateCopyWith<$Res> {
  _$EmployeeProfileStateCopyWithImpl(this._value, this._then);

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
abstract class _$$EmployeeProfileStateImplCopyWith<$Res>
    implements $EmployeeProfileStateCopyWith<$Res> {
  factory _$$EmployeeProfileStateImplCopyWith(_$EmployeeProfileStateImpl value,
          $Res Function(_$EmployeeProfileStateImpl) then) =
      __$$EmployeeProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$EmployeeProfileStateImplCopyWithImpl<$Res>
    extends _$EmployeeProfileStateCopyWithImpl<$Res, _$EmployeeProfileStateImpl>
    implements _$$EmployeeProfileStateImplCopyWith<$Res> {
  __$$EmployeeProfileStateImplCopyWithImpl(_$EmployeeProfileStateImpl _value,
      $Res Function(_$EmployeeProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$EmployeeProfileStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EmployeeProfileStateImpl implements _EmployeeProfileState {
  _$EmployeeProfileStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'EmployeeProfileState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeProfileStateImplCopyWith<_$EmployeeProfileStateImpl>
      get copyWith =>
          __$$EmployeeProfileStateImplCopyWithImpl<_$EmployeeProfileStateImpl>(
              this, _$identity);
}

abstract class _EmployeeProfileState implements EmployeeProfileState {
  factory _EmployeeProfileState({int counter}) = _$EmployeeProfileStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$EmployeeProfileStateImplCopyWith<_$EmployeeProfileStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
