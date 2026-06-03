// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreditCardPaymentModel {

 String get cardNumber; String get expiryDate; String get cvv; String get cardHolderName; double get amount;
/// Create a copy of CreditCardPaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreditCardPaymentModelCopyWith<CreditCardPaymentModel> get copyWith => _$CreditCardPaymentModelCopyWithImpl<CreditCardPaymentModel>(this as CreditCardPaymentModel, _$identity);

  /// Serializes this CreditCardPaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreditCardPaymentModel&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.cardHolderName, cardHolderName) || other.cardHolderName == cardHolderName)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,expiryDate,cvv,cardHolderName,amount);

@override
String toString() {
  return 'CreditCardPaymentModel(cardNumber: $cardNumber, expiryDate: $expiryDate, cvv: $cvv, cardHolderName: $cardHolderName, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $CreditCardPaymentModelCopyWith<$Res>  {
  factory $CreditCardPaymentModelCopyWith(CreditCardPaymentModel value, $Res Function(CreditCardPaymentModel) _then) = _$CreditCardPaymentModelCopyWithImpl;
@useResult
$Res call({
 String cardNumber, String expiryDate, String cvv, String cardHolderName, double amount
});




}
/// @nodoc
class _$CreditCardPaymentModelCopyWithImpl<$Res>
    implements $CreditCardPaymentModelCopyWith<$Res> {
  _$CreditCardPaymentModelCopyWithImpl(this._self, this._then);

  final CreditCardPaymentModel _self;
  final $Res Function(CreditCardPaymentModel) _then;

/// Create a copy of CreditCardPaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardNumber = null,Object? expiryDate = null,Object? cvv = null,Object? cardHolderName = null,Object? amount = null,}) {
  return _then(_self.copyWith(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,cardHolderName: null == cardHolderName ? _self.cardHolderName : cardHolderName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CreditCardPaymentModel].
extension CreditCardPaymentModelPatterns on CreditCardPaymentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreditCardPaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreditCardPaymentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreditCardPaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _CreditCardPaymentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreditCardPaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreditCardPaymentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cardNumber,  String expiryDate,  String cvv,  String cardHolderName,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreditCardPaymentModel() when $default != null:
return $default(_that.cardNumber,_that.expiryDate,_that.cvv,_that.cardHolderName,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cardNumber,  String expiryDate,  String cvv,  String cardHolderName,  double amount)  $default,) {final _that = this;
switch (_that) {
case _CreditCardPaymentModel():
return $default(_that.cardNumber,_that.expiryDate,_that.cvv,_that.cardHolderName,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cardNumber,  String expiryDate,  String cvv,  String cardHolderName,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _CreditCardPaymentModel() when $default != null:
return $default(_that.cardNumber,_that.expiryDate,_that.cvv,_that.cardHolderName,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreditCardPaymentModel implements CreditCardPaymentModel {
   _CreditCardPaymentModel({required this.cardNumber, required this.expiryDate, required this.cvv, required this.cardHolderName, required this.amount});
  factory _CreditCardPaymentModel.fromJson(Map<String, dynamic> json) => _$CreditCardPaymentModelFromJson(json);

@override final  String cardNumber;
@override final  String expiryDate;
@override final  String cvv;
@override final  String cardHolderName;
@override final  double amount;

/// Create a copy of CreditCardPaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreditCardPaymentModelCopyWith<_CreditCardPaymentModel> get copyWith => __$CreditCardPaymentModelCopyWithImpl<_CreditCardPaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreditCardPaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreditCardPaymentModel&&(identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.cvv, cvv) || other.cvv == cvv)&&(identical(other.cardHolderName, cardHolderName) || other.cardHolderName == cardHolderName)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardNumber,expiryDate,cvv,cardHolderName,amount);

@override
String toString() {
  return 'CreditCardPaymentModel(cardNumber: $cardNumber, expiryDate: $expiryDate, cvv: $cvv, cardHolderName: $cardHolderName, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$CreditCardPaymentModelCopyWith<$Res> implements $CreditCardPaymentModelCopyWith<$Res> {
  factory _$CreditCardPaymentModelCopyWith(_CreditCardPaymentModel value, $Res Function(_CreditCardPaymentModel) _then) = __$CreditCardPaymentModelCopyWithImpl;
@override @useResult
$Res call({
 String cardNumber, String expiryDate, String cvv, String cardHolderName, double amount
});




}
/// @nodoc
class __$CreditCardPaymentModelCopyWithImpl<$Res>
    implements _$CreditCardPaymentModelCopyWith<$Res> {
  __$CreditCardPaymentModelCopyWithImpl(this._self, this._then);

  final _CreditCardPaymentModel _self;
  final $Res Function(_CreditCardPaymentModel) _then;

/// Create a copy of CreditCardPaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardNumber = null,Object? expiryDate = null,Object? cvv = null,Object? cardHolderName = null,Object? amount = null,}) {
  return _then(_CreditCardPaymentModel(
cardNumber: null == cardNumber ? _self.cardNumber : cardNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,cvv: null == cvv ? _self.cvv : cvv // ignore: cast_nullable_to_non_nullable
as String,cardHolderName: null == cardHolderName ? _self.cardHolderName : cardHolderName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
