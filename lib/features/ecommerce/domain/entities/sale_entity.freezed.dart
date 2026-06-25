// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaleEntity {

 String get id; String get date; String get user; double get amount;
/// Create a copy of SaleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleEntityCopyWith<SaleEntity> get copyWith => _$SaleEntityCopyWithImpl<SaleEntity>(this as SaleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.user, user) || other.user == user)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,user,amount);

@override
String toString() {
  return 'SaleEntity(id: $id, date: $date, user: $user, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SaleEntityCopyWith<$Res>  {
  factory $SaleEntityCopyWith(SaleEntity value, $Res Function(SaleEntity) _then) = _$SaleEntityCopyWithImpl;
@useResult
$Res call({
 String id, String date, String user, double amount
});




}
/// @nodoc
class _$SaleEntityCopyWithImpl<$Res>
    implements $SaleEntityCopyWith<$Res> {
  _$SaleEntityCopyWithImpl(this._self, this._then);

  final SaleEntity _self;
  final $Res Function(SaleEntity) _then;

/// Create a copy of SaleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? date = null,Object? user = null,Object? amount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SaleEntity].
extension SaleEntityPatterns on SaleEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleEntity value)  $default,){
final _that = this;
switch (_that) {
case _SaleEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SaleEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String date,  String user,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleEntity() when $default != null:
return $default(_that.id,_that.date,_that.user,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String date,  String user,  double amount)  $default,) {final _that = this;
switch (_that) {
case _SaleEntity():
return $default(_that.id,_that.date,_that.user,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String date,  String user,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _SaleEntity() when $default != null:
return $default(_that.id,_that.date,_that.user,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _SaleEntity implements SaleEntity {
   _SaleEntity({required this.id, required this.date, required this.user, required this.amount});
  

@override final  String id;
@override final  String date;
@override final  String user;
@override final  double amount;

/// Create a copy of SaleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleEntityCopyWith<_SaleEntity> get copyWith => __$SaleEntityCopyWithImpl<_SaleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.date, date) || other.date == date)&&(identical(other.user, user) || other.user == user)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,id,date,user,amount);

@override
String toString() {
  return 'SaleEntity(id: $id, date: $date, user: $user, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$SaleEntityCopyWith<$Res> implements $SaleEntityCopyWith<$Res> {
  factory _$SaleEntityCopyWith(_SaleEntity value, $Res Function(_SaleEntity) _then) = __$SaleEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String date, String user, double amount
});




}
/// @nodoc
class __$SaleEntityCopyWithImpl<$Res>
    implements _$SaleEntityCopyWith<$Res> {
  __$SaleEntityCopyWithImpl(this._self, this._then);

  final _SaleEntity _self;
  final $Res Function(_SaleEntity) _then;

/// Create a copy of SaleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? date = null,Object? user = null,Object? amount = null,}) {
  return _then(_SaleEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
