// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hrd_main_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HrdMainNavigationState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HrdMainNavigationStateCopyWith<HrdMainNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrdMainNavigationStateCopyWith<$Res> {
  factory $HrdMainNavigationStateCopyWith(HrdMainNavigationState value,
          $Res Function(HrdMainNavigationState) then) =
      _$HrdMainNavigationStateCopyWithImpl<$Res, HrdMainNavigationState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$HrdMainNavigationStateCopyWithImpl<$Res,
        $Val extends HrdMainNavigationState>
    implements $HrdMainNavigationStateCopyWith<$Res> {
  _$HrdMainNavigationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$HrdMainNavigationStateImplCopyWith<$Res>
    implements $HrdMainNavigationStateCopyWith<$Res> {
  factory _$$HrdMainNavigationStateImplCopyWith(
          _$HrdMainNavigationStateImpl value,
          $Res Function(_$HrdMainNavigationStateImpl) then) =
      __$$HrdMainNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$HrdMainNavigationStateImplCopyWithImpl<$Res>
    extends _$HrdMainNavigationStateCopyWithImpl<$Res,
        _$HrdMainNavigationStateImpl>
    implements _$$HrdMainNavigationStateImplCopyWith<$Res> {
  __$$HrdMainNavigationStateImplCopyWithImpl(
      _$HrdMainNavigationStateImpl _value,
      $Res Function(_$HrdMainNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$HrdMainNavigationStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HrdMainNavigationStateImpl implements _HrdMainNavigationState {
  _$HrdMainNavigationStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'HrdMainNavigationState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HrdMainNavigationStateImplCopyWith<_$HrdMainNavigationStateImpl>
      get copyWith => __$$HrdMainNavigationStateImplCopyWithImpl<
          _$HrdMainNavigationStateImpl>(this, _$identity);
}

abstract class _HrdMainNavigationState implements HrdMainNavigationState {
  factory _HrdMainNavigationState({int counter}) = _$HrdMainNavigationStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$HrdMainNavigationStateImplCopyWith<_$HrdMainNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
