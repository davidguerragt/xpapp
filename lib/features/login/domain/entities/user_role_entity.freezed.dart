// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_role_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserRoleEntity {

 String get user; String get role;
/// Create a copy of UserRoleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRoleEntityCopyWith<UserRoleEntity> get copyWith => _$UserRoleEntityCopyWithImpl<UserRoleEntity>(this as UserRoleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRoleEntity&&(identical(other.user, user) || other.user == user)&&(identical(other.role, role) || other.role == role));
}


@override
int get hashCode => Object.hash(runtimeType,user,role);

@override
String toString() {
  return 'UserRoleEntity(user: $user, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserRoleEntityCopyWith<$Res>  {
  factory $UserRoleEntityCopyWith(UserRoleEntity value, $Res Function(UserRoleEntity) _then) = _$UserRoleEntityCopyWithImpl;
@useResult
$Res call({
 String user, String role
});




}
/// @nodoc
class _$UserRoleEntityCopyWithImpl<$Res>
    implements $UserRoleEntityCopyWith<$Res> {
  _$UserRoleEntityCopyWithImpl(this._self, this._then);

  final UserRoleEntity _self;
  final $Res Function(UserRoleEntity) _then;

/// Create a copy of UserRoleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? role = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRoleEntity].
extension UserRoleEntityPatterns on UserRoleEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRoleEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRoleEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRoleEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserRoleEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRoleEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserRoleEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String user,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRoleEntity() when $default != null:
return $default(_that.user,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String user,  String role)  $default,) {final _that = this;
switch (_that) {
case _UserRoleEntity():
return $default(_that.user,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String user,  String role)?  $default,) {final _that = this;
switch (_that) {
case _UserRoleEntity() when $default != null:
return $default(_that.user,_that.role);case _:
  return null;

}
}

}

/// @nodoc


class _UserRoleEntity implements UserRoleEntity {
  const _UserRoleEntity({required this.user, required this.role});
  

@override final  String user;
@override final  String role;

/// Create a copy of UserRoleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRoleEntityCopyWith<_UserRoleEntity> get copyWith => __$UserRoleEntityCopyWithImpl<_UserRoleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRoleEntity&&(identical(other.user, user) || other.user == user)&&(identical(other.role, role) || other.role == role));
}


@override
int get hashCode => Object.hash(runtimeType,user,role);

@override
String toString() {
  return 'UserRoleEntity(user: $user, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserRoleEntityCopyWith<$Res> implements $UserRoleEntityCopyWith<$Res> {
  factory _$UserRoleEntityCopyWith(_UserRoleEntity value, $Res Function(_UserRoleEntity) _then) = __$UserRoleEntityCopyWithImpl;
@override @useResult
$Res call({
 String user, String role
});




}
/// @nodoc
class __$UserRoleEntityCopyWithImpl<$Res>
    implements _$UserRoleEntityCopyWith<$Res> {
  __$UserRoleEntityCopyWithImpl(this._self, this._then);

  final _UserRoleEntity _self;
  final $Res Function(_UserRoleEntity) _then;

/// Create a copy of UserRoleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? role = null,}) {
  return _then(_UserRoleEntity(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
