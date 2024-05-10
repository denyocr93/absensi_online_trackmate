// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hrd_edit_profile_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HrdEditProfileFormState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HrdEditProfileFormStateCopyWith<HrdEditProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HrdEditProfileFormStateCopyWith<$Res> {
  factory $HrdEditProfileFormStateCopyWith(HrdEditProfileFormState value,
          $Res Function(HrdEditProfileFormState) then) =
      _$HrdEditProfileFormStateCopyWithImpl<$Res, HrdEditProfileFormState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$HrdEditProfileFormStateCopyWithImpl<$Res,
        $Val extends HrdEditProfileFormState>
    implements $HrdEditProfileFormStateCopyWith<$Res> {
  _$HrdEditProfileFormStateCopyWithImpl(this._value, this._then);

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
abstract class _$$HrdEditProfileFormStateImplCopyWith<$Res>
    implements $HrdEditProfileFormStateCopyWith<$Res> {
  factory _$$HrdEditProfileFormStateImplCopyWith(
          _$HrdEditProfileFormStateImpl value,
          $Res Function(_$HrdEditProfileFormStateImpl) then) =
      __$$HrdEditProfileFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$HrdEditProfileFormStateImplCopyWithImpl<$Res>
    extends _$HrdEditProfileFormStateCopyWithImpl<$Res,
        _$HrdEditProfileFormStateImpl>
    implements _$$HrdEditProfileFormStateImplCopyWith<$Res> {
  __$$HrdEditProfileFormStateImplCopyWithImpl(
      _$HrdEditProfileFormStateImpl _value,
      $Res Function(_$HrdEditProfileFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$HrdEditProfileFormStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HrdEditProfileFormStateImpl implements _HrdEditProfileFormState {
  _$HrdEditProfileFormStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'HrdEditProfileFormState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HrdEditProfileFormStateImplCopyWith<_$HrdEditProfileFormStateImpl>
      get copyWith => __$$HrdEditProfileFormStateImplCopyWithImpl<
          _$HrdEditProfileFormStateImpl>(this, _$identity);
}

abstract class _HrdEditProfileFormState implements HrdEditProfileFormState {
  factory _HrdEditProfileFormState({int counter}) =
      _$HrdEditProfileFormStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$HrdEditProfileFormStateImplCopyWith<_$HrdEditProfileFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
