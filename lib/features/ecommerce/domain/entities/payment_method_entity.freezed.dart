// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethodEntity implements DiagnosticableTreeMixin {

 String get number; String get holder; String get behavior; int get availableFunds; String get declineReason; String get brand;
/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodEntityCopyWith<PaymentMethodEntity> get copyWith => _$PaymentMethodEntityCopyWithImpl<PaymentMethodEntity>(this as PaymentMethodEntity, _$identity);

  /// Serializes this PaymentMethodEntity to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentMethodEntity'))
    ..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('holder', holder))..add(DiagnosticsProperty('behavior', behavior))..add(DiagnosticsProperty('availableFunds', availableFunds))..add(DiagnosticsProperty('declineReason', declineReason))..add(DiagnosticsProperty('brand', brand));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodEntity&&(identical(other.number, number) || other.number == number)&&(identical(other.holder, holder) || other.holder == holder)&&(identical(other.behavior, behavior) || other.behavior == behavior)&&(identical(other.availableFunds, availableFunds) || other.availableFunds == availableFunds)&&(identical(other.declineReason, declineReason) || other.declineReason == declineReason)&&(identical(other.brand, brand) || other.brand == brand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,holder,behavior,availableFunds,declineReason,brand);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentMethodEntity(number: $number, holder: $holder, behavior: $behavior, availableFunds: $availableFunds, declineReason: $declineReason, brand: $brand)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodEntityCopyWith<$Res>  {
  factory $PaymentMethodEntityCopyWith(PaymentMethodEntity value, $Res Function(PaymentMethodEntity) _then) = _$PaymentMethodEntityCopyWithImpl;
@useResult
$Res call({
 String number, String holder, String behavior, int availableFunds, String declineReason, String brand
});




}
/// @nodoc
class _$PaymentMethodEntityCopyWithImpl<$Res>
    implements $PaymentMethodEntityCopyWith<$Res> {
  _$PaymentMethodEntityCopyWithImpl(this._self, this._then);

  final PaymentMethodEntity _self;
  final $Res Function(PaymentMethodEntity) _then;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? holder = null,Object? behavior = null,Object? availableFunds = null,Object? declineReason = null,Object? brand = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,holder: null == holder ? _self.holder : holder // ignore: cast_nullable_to_non_nullable
as String,behavior: null == behavior ? _self.behavior : behavior // ignore: cast_nullable_to_non_nullable
as String,availableFunds: null == availableFunds ? _self.availableFunds : availableFunds // ignore: cast_nullable_to_non_nullable
as int,declineReason: null == declineReason ? _self.declineReason : declineReason // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethodEntity].
extension PaymentMethodEntityPatterns on PaymentMethodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  String holder,  String behavior,  int availableFunds,  String declineReason,  String brand)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
return $default(_that.number,_that.holder,_that.behavior,_that.availableFunds,_that.declineReason,_that.brand);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  String holder,  String behavior,  int availableFunds,  String declineReason,  String brand)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodEntity():
return $default(_that.number,_that.holder,_that.behavior,_that.availableFunds,_that.declineReason,_that.brand);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  String holder,  String behavior,  int availableFunds,  String declineReason,  String brand)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
return $default(_that.number,_that.holder,_that.behavior,_that.availableFunds,_that.declineReason,_that.brand);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodEntity with DiagnosticableTreeMixin implements PaymentMethodEntity {
  const _PaymentMethodEntity({required this.number, required this.holder, required this.behavior, required this.availableFunds, required this.declineReason, required this.brand});
  factory _PaymentMethodEntity.fromJson(Map<String, dynamic> json) => _$PaymentMethodEntityFromJson(json);

@override final  String number;
@override final  String holder;
@override final  String behavior;
@override final  int availableFunds;
@override final  String declineReason;
@override final  String brand;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodEntityCopyWith<_PaymentMethodEntity> get copyWith => __$PaymentMethodEntityCopyWithImpl<_PaymentMethodEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodEntityToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentMethodEntity'))
    ..add(DiagnosticsProperty('number', number))..add(DiagnosticsProperty('holder', holder))..add(DiagnosticsProperty('behavior', behavior))..add(DiagnosticsProperty('availableFunds', availableFunds))..add(DiagnosticsProperty('declineReason', declineReason))..add(DiagnosticsProperty('brand', brand));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodEntity&&(identical(other.number, number) || other.number == number)&&(identical(other.holder, holder) || other.holder == holder)&&(identical(other.behavior, behavior) || other.behavior == behavior)&&(identical(other.availableFunds, availableFunds) || other.availableFunds == availableFunds)&&(identical(other.declineReason, declineReason) || other.declineReason == declineReason)&&(identical(other.brand, brand) || other.brand == brand));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,holder,behavior,availableFunds,declineReason,brand);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentMethodEntity(number: $number, holder: $holder, behavior: $behavior, availableFunds: $availableFunds, declineReason: $declineReason, brand: $brand)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodEntityCopyWith<$Res> implements $PaymentMethodEntityCopyWith<$Res> {
  factory _$PaymentMethodEntityCopyWith(_PaymentMethodEntity value, $Res Function(_PaymentMethodEntity) _then) = __$PaymentMethodEntityCopyWithImpl;
@override @useResult
$Res call({
 String number, String holder, String behavior, int availableFunds, String declineReason, String brand
});




}
/// @nodoc
class __$PaymentMethodEntityCopyWithImpl<$Res>
    implements _$PaymentMethodEntityCopyWith<$Res> {
  __$PaymentMethodEntityCopyWithImpl(this._self, this._then);

  final _PaymentMethodEntity _self;
  final $Res Function(_PaymentMethodEntity) _then;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? holder = null,Object? behavior = null,Object? availableFunds = null,Object? declineReason = null,Object? brand = null,}) {
  return _then(_PaymentMethodEntity(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,holder: null == holder ? _self.holder : holder // ignore: cast_nullable_to_non_nullable
as String,behavior: null == behavior ? _self.behavior : behavior // ignore: cast_nullable_to_non_nullable
as String,availableFunds: null == availableFunds ? _self.availableFunds : availableFunds // ignore: cast_nullable_to_non_nullable
as int,declineReason: null == declineReason ? _self.declineReason : declineReason // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
