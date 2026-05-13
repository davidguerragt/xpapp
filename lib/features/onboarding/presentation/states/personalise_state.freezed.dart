// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personalise_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PersonaliseState {

 List<String> get interests;
/// Create a copy of PersonaliseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonaliseStateCopyWith<PersonaliseState> get copyWith => _$PersonaliseStateCopyWithImpl<PersonaliseState>(this as PersonaliseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonaliseState&&const DeepCollectionEquality().equals(other.interests, interests));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(interests));

@override
String toString() {
  return 'PersonaliseState(interests: $interests)';
}


}

/// @nodoc
abstract mixin class $PersonaliseStateCopyWith<$Res>  {
  factory $PersonaliseStateCopyWith(PersonaliseState value, $Res Function(PersonaliseState) _then) = _$PersonaliseStateCopyWithImpl;
@useResult
$Res call({
 List<String> interests
});




}
/// @nodoc
class _$PersonaliseStateCopyWithImpl<$Res>
    implements $PersonaliseStateCopyWith<$Res> {
  _$PersonaliseStateCopyWithImpl(this._self, this._then);

  final PersonaliseState _self;
  final $Res Function(PersonaliseState) _then;

/// Create a copy of PersonaliseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? interests = null,}) {
  return _then(_self.copyWith(
interests: null == interests ? _self.interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonaliseState].
extension PersonaliseStatePatterns on PersonaliseState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonaliseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonaliseState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonaliseState value)  $default,){
final _that = this;
switch (_that) {
case _PersonaliseState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonaliseState value)?  $default,){
final _that = this;
switch (_that) {
case _PersonaliseState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> interests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonaliseState() when $default != null:
return $default(_that.interests);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> interests)  $default,) {final _that = this;
switch (_that) {
case _PersonaliseState():
return $default(_that.interests);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> interests)?  $default,) {final _that = this;
switch (_that) {
case _PersonaliseState() when $default != null:
return $default(_that.interests);case _:
  return null;

}
}

}

/// @nodoc


class _PersonaliseState implements PersonaliseState {
  const _PersonaliseState({required final  List<String> interests}): _interests = interests;
  

 final  List<String> _interests;
@override List<String> get interests {
  if (_interests is EqualUnmodifiableListView) return _interests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interests);
}


/// Create a copy of PersonaliseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonaliseStateCopyWith<_PersonaliseState> get copyWith => __$PersonaliseStateCopyWithImpl<_PersonaliseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonaliseState&&const DeepCollectionEquality().equals(other._interests, _interests));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_interests));

@override
String toString() {
  return 'PersonaliseState(interests: $interests)';
}


}

/// @nodoc
abstract mixin class _$PersonaliseStateCopyWith<$Res> implements $PersonaliseStateCopyWith<$Res> {
  factory _$PersonaliseStateCopyWith(_PersonaliseState value, $Res Function(_PersonaliseState) _then) = __$PersonaliseStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> interests
});




}
/// @nodoc
class __$PersonaliseStateCopyWithImpl<$Res>
    implements _$PersonaliseStateCopyWith<$Res> {
  __$PersonaliseStateCopyWithImpl(this._self, this._then);

  final _PersonaliseState _self;
  final $Res Function(_PersonaliseState) _then;

/// Create a copy of PersonaliseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? interests = null,}) {
  return _then(_PersonaliseState(
interests: null == interests ? _self._interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
