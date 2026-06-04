// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_process_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentProcessEntity {

 String get cardNumber; String get expiryDate; String get cvv; String get cardHolderName; double get amount; String get currency;
/// Create a copy of PaymentProcessEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentProcessEntityCopyWith<PaymentProcessEntity> get copyWith => _$PaymentProcessEntityCopyWithImpl<PaymentProcessEntity>(this as PaymentProcessEntity, _$identity);

  /// Serializes this PaymentProcessEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentProcessEntity&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.cardHolderName, cardHolderName) || other.cardHolderName == cardHolderName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,expiryDate,cvv,cardHolderName,amount,currency);

@override
String toString() {
  return 'PaymentProcessEntity(cardNumber: $cardNumber, expiryDate: $expiryDate, cvv: $cvv, cardHolderName: $cardHolderName, amount: $amount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $PaymentProcessEntityCopyWith<$Res>  {
  factory $PaymentProcessEntityCopyWith(PaymentProcessEntity value, $Res Function(PaymentProcessEntity) _then) = _$PaymentProcessEntityCopyWithImpl;
@useResult
$Res call({
 String cardNumber, String expiryDate, String cvv, String cardHolderName, double amount, String currency
});




}
/// @nodoc
class _$PaymentProcessEntityCopyWithImpl<$Res>
    implements $PaymentProcessEntityCopyWith<$Res> {
  _$PaymentProcessEntityCopyWithImpl(this._self, this._then);

  final PaymentProcessEntity _self;
  final $Res Function(PaymentProcessEntity) _then;

/// Create a copy of PaymentProcessEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = null,Object? expiryDate = null,Object? cvv = null,Object? cardHolderName = null,Object? amount = null,Object? currency = null,}) {
  return _then(_self.copyWith(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,cardHolderName: null == cardHolderName ? _self.cardHolderName : cardHolderName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentProcessEntity].
extension PaymentProcessEntityPatterns on PaymentProcessEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentProcessEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentProcessEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentProcessEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentProcessEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentProcessEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentProcessEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cardNumber,  String expiryDate,  String cvv,  String cardHolderName,  double amount,  String currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentProcessEntity() when $default != null:
return $default(_that.cardNumber,_that.expiryDate,_that.cvv,_that.cardHolderName,_that.amount,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cardNumber,  String expiryDate,  String cvv,  String cardHolderName,  double amount,  String currency)  $default,) {final _that = this;
switch (_that) {
case _PaymentProcessEntity():
return $default(_that.cardNumber,_that.expiryDate,_that.cvv,_that.cardHolderName,_that.amount,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cardNumber,  String expiryDate,  String cvv,  String cardHolderName,  double amount,  String currency)?  $default,) {final _that = this;
switch (_that) {
case _PaymentProcessEntity() when $default != null:
return $default(_that.cardNumber,_that.expiryDate,_that.cvv,_that.cardHolderName,_that.amount,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentProcessEntity implements PaymentProcessEntity {
  const _PaymentProcessEntity({required this.cardNumber, required this.expiryDate, required this.cvv, required this.cardHolderName, required this.amount, required this.currency});
  factory _PaymentProcessEntity.fromJson(Map<String, dynamic> json) => _$PaymentProcessEntityFromJson(json);

@override final  String cardNumber;
@override final  String expiryDate;
@override final  String cvv;
@override final  String cardHolderName;
@override final  double amount;
@override final  String currency;

/// Create a copy of PaymentProcessEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentProcessEntityCopyWith<_PaymentProcessEntity> get copyWith => __$PaymentProcessEntityCopyWithImpl<_PaymentProcessEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentProcessEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentProcessEntity&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.cardHolderName, cardHolderName) || other.cardHolderName == cardHolderName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,expiryDate,cvv,cardHolderName,amount,currency);

@override
String toString() {
  return 'PaymentProcessEntity(cardNumber: $cardNumber, expiryDate: $expiryDate, cvv: $cvv, cardHolderName: $cardHolderName, amount: $amount, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$PaymentProcessEntityCopyWith<$Res> implements $PaymentProcessEntityCopyWith<$Res> {
  factory _$PaymentProcessEntityCopyWith(_PaymentProcessEntity value, $Res Function(_PaymentProcessEntity) _then) = __$PaymentProcessEntityCopyWithImpl;
@override @useResult
$Res call({
 String cardNumber, String expiryDate, String cvv, String cardHolderName, double amount, String currency
});




}
/// @nodoc
class __$PaymentProcessEntityCopyWithImpl<$Res>
    implements _$PaymentProcessEntityCopyWith<$Res> {
  __$PaymentProcessEntityCopyWithImpl(this._self, this._then);

  final _PaymentProcessEntity _self;
  final $Res Function(_PaymentProcessEntity) _then;

/// Create a copy of PaymentProcessEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? expiryDate = null,Object? cvv = null,Object? cardHolderName = null,Object? amount = null,Object? currency = null,}) {
  return _then(_PaymentProcessEntity(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,cardHolderName: null == cardHolderName ? _self.cardHolderName : cardHolderName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
