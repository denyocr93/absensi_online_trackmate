// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hrd_dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HrdDashboardState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HrdDashboardStateCopyWith<HrdDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrdDashboardStateCopyWith<$Res> {
  factory $HrdDashboardStateCopyWith(
          HrdDashboardState value, $Res Function(HrdDashboardState) then) =
      _$HrdDashboardStateCopyWithImpl<$Res, HrdDashboardState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$HrdDashboardStateCopyWithImpl<$Res, $Val extends HrdDashboardState>
    implements $HrdDashboardStateCopyWith<$Res> {
  _$HrdDashboardStateCopyWithImpl(this._value, this._then);

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
abstract class _$$HrdDashboardStateImplCopyWith<$Res>
    implements $HrdDashboardStateCopyWith<$Res> {
  factory _$$HrdDashboardStateImplCopyWith(_$HrdDashboardStateImpl value,
          $Res Function(_$HrdDashboardStateImpl) then) =
      __$$HrdDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$HrdDashboardStateImplCopyWithImpl<$Res>
    extends _$HrdDashboardStateCopyWithImpl<$Res, _$HrdDashboardStateImpl>
    implements _$$HrdDashboardStateImplCopyWith<$Res> {
  __$$HrdDashboardStateImplCopyWithImpl(_$HrdDashboardStateImpl _value,
      $Res Function(_$HrdDashboardStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$HrdDashboardStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HrdDashboardStateImpl implements _HrdDashboardState {
  _$HrdDashboardStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'HrdDashboardState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HrdDashboardStateImplCopyWith<_$HrdDashboardStateImpl> get copyWith =>
      __$$HrdDashboardStateImplCopyWithImpl<_$HrdDashboardStateImpl>(
          this, _$identity);
}

abstract class _HrdDashboardState implements HrdDashboardState {
  factory _HrdDashboardState({int counter}) = _$HrdDashboardStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$HrdDashboardStateImplCopyWith<_$HrdDashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
