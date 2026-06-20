// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethodModel {

 String get number; String get holder; String get behavior; int get availableFunds; String get declineReason;
/// Create a copy of PaymentMethodModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodModelCopyWith<PaymentMethodModel> get copyWith => _$PaymentMethodModelCopyWithImpl<PaymentMethodModel>(this as PaymentMethodModel, _$identity);

  /// Serializes this PaymentMethodModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodModel&&(identical(other.number, number) || other.number == number)&&(identical(other.holder, holder) || other.holder == holder)&&(identical(other.behavior, behavior) || other.behavior == behavior)&&(identical(other.availableFunds, availableFunds) || other.availableFunds == availableFunds)&&(identical(other.declineReason, declineReason) || other.declineReason == declineReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,holder,behavior,availableFunds,declineReason);

@override
String toString() {
  return 'PaymentMethodModel(number: $number, holder: $holder, behavior: $behavior, availableFunds: $availableFunds, declineReason: $declineReason)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodModelCopyWith<$Res>  {
  factory $PaymentMethodModelCopyWith(PaymentMethodModel value, $Res Function(PaymentMethodModel) _then) = _$PaymentMethodModelCopyWithImpl;
@useResult
$Res call({
 String number, String holder, String behavior, int availableFunds, String declineReason
});




}
/// @nodoc
class _$PaymentMethodModelCopyWithImpl<$Res>
    implements $PaymentMethodModelCopyWith<$Res> {
  _$PaymentMethodModelCopyWithImpl(this._self, this._then);

  final PaymentMethodModel _self;
  final $Res Function(PaymentMethodModel) _then;

/// Create a copy of PaymentMethodModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? holder = null,Object? behavior = null,Object? availableFunds = null,Object? declineReason = null,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,holder: null == holder ? _self.holder : holder // ignore: cast_nullable_to_non_nullable
as String,behavior: null == behavior ? _self.behavior : behavior // ignore: cast_nullable_to_non_nullable
as String,availableFunds: null == availableFunds ? _self.availableFunds : availableFunds // ignore: cast_nullable_to_non_nullable
as int,declineReason: null == declineReason ? _self.declineReason : declineReason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethodModel].
extension PaymentMethodModelPatterns on PaymentMethodModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String number,  String holder,  String behavior,  int availableFunds,  String declineReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodModel() when $default != null:
return $default(_that.number,_that.holder,_that.behavior,_that.availableFunds,_that.declineReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String number,  String holder,  String behavior,  int availableFunds,  String declineReason)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodModel():
return $default(_that.number,_that.holder,_that.behavior,_that.availableFunds,_that.declineReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String number,  String holder,  String behavior,  int availableFunds,  String declineReason)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodModel() when $default != null:
return $default(_that.number,_that.holder,_that.behavior,_that.availableFunds,_that.declineReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodModel implements PaymentMethodModel {
   _PaymentMethodModel({required this.number, required this.holder, required this.behavior, required this.availableFunds, required this.declineReason});
  factory _PaymentMethodModel.fromJson(Map<String, dynamic> json) => _$PaymentMethodModelFromJson(json);

@override final  String number;
@override final  String holder;
@override final  String behavior;
@override final  int availableFunds;
@override final  String declineReason;

/// Create a copy of PaymentMethodModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodModelCopyWith<_PaymentMethodModel> get copyWith => __$PaymentMethodModelCopyWithImpl<_PaymentMethodModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodModel&&(identical(other.number, number) || other.number == number)&&(identical(other.holder, holder) || other.holder == holder)&&(identical(other.behavior, behavior) || other.behavior == behavior)&&(identical(other.availableFunds, availableFunds) || other.availableFunds == availableFunds)&&(identical(other.declineReason, declineReason) || other.declineReason == declineReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,holder,behavior,availableFunds,declineReason);

@override
String toString() {
  return 'PaymentMethodModel(number: $number, holder: $holder, behavior: $behavior, availableFunds: $availableFunds, declineReason: $declineReason)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodModelCopyWith<$Res> implements $PaymentMethodModelCopyWith<$Res> {
  factory _$PaymentMethodModelCopyWith(_PaymentMethodModel value, $Res Function(_PaymentMethodModel) _then) = __$PaymentMethodModelCopyWithImpl;
@override @useResult
$Res call({
 String number, String holder, String behavior, int availableFunds, String declineReason
});




}
/// @nodoc
class __$PaymentMethodModelCopyWithImpl<$Res>
    implements _$PaymentMethodModelCopyWith<$Res> {
  __$PaymentMethodModelCopyWithImpl(this._self, this._then);

  final _PaymentMethodModel _self;
  final $Res Function(_PaymentMethodModel) _then;

/// Create a copy of PaymentMethodModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? holder = null,Object? behavior = null,Object? availableFunds = null,Object? declineReason = null,}) {
  return _then(_PaymentMethodModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,holder: null == holder ? _self.holder : holder // ignore: cast_nullable_to_non_nullable
as String,behavior: null == behavior ? _self.behavior : behavior // ignore: cast_nullable_to_non_nullable
as String,availableFunds: null == availableFunds ? _self.availableFunds : availableFunds // ignore: cast_nullable_to_non_nullable
as int,declineReason: null == declineReason ? _self.declineReason : declineReason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
