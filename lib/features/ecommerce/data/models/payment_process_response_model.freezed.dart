// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_process_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreditCardPaymentResponseModel {

 bool get success; String get status; String get transactionId;@JsonKey(fromJson: _amountFromJson) double get amount; String get currency; String get cardLast4; String get message;@JsonKey(fromJson: _dateTimeFromJson) DateTime get timestamp;
/// Create a copy of CreditCardPaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreditCardPaymentResponseModelCopyWith<CreditCardPaymentResponseModel> get copyWith => _$CreditCardPaymentResponseModelCopyWithImpl<CreditCardPaymentResponseModel>(this as CreditCardPaymentResponseModel, _$identity);

  /// Serializes this CreditCardPaymentResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreditCardPaymentResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.status, status) || other.status == status)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.cardLast4, cardLast4) || other.cardLast4 == cardLast4)&&(identical(other.message, message) || other.message == message)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,status,transactionId,amount,currency,cardLast4,message,timestamp);

@override
String toString() {
  return 'CreditCardPaymentResponseModel(success: $success, status: $status, transactionId: $transactionId, amount: $amount, currency: $currency, cardLast4: $cardLast4, message: $message, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $CreditCardPaymentResponseModelCopyWith<$Res>  {
  factory $CreditCardPaymentResponseModelCopyWith(CreditCardPaymentResponseModel value, $Res Function(CreditCardPaymentResponseModel) _then) = _$CreditCardPaymentResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, String status, String transactionId,@JsonKey(fromJson: _amountFromJson) double amount, String currency, String cardLast4, String message,@JsonKey(fromJson: _dateTimeFromJson) DateTime timestamp
});




}
/// @nodoc
class _$CreditCardPaymentResponseModelCopyWithImpl<$Res>
    implements $CreditCardPaymentResponseModelCopyWith<$Res> {
  _$CreditCardPaymentResponseModelCopyWithImpl(this._self, this._then);

  final CreditCardPaymentResponseModel _self;
  final $Res Function(CreditCardPaymentResponseModel) _then;

/// Create a copy of CreditCardPaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? status = null,Object? transactionId = null,Object? amount = null,Object? currency = null,Object? cardLast4 = null,Object? message = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,cardLast4: null == cardLast4 ? _self.cardLast4 : cardLast4 // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CreditCardPaymentResponseModel].
extension CreditCardPaymentResponseModelPatterns on CreditCardPaymentResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreditCardPaymentResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreditCardPaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreditCardPaymentResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreditCardPaymentResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreditCardPaymentResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreditCardPaymentResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String status,  String transactionId, @JsonKey(fromJson: _amountFromJson)  double amount,  String currency,  String cardLast4,  String message, @JsonKey(fromJson: _dateTimeFromJson)  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreditCardPaymentResponseModel() when $default != null:
return $default(_that.success,_that.status,_that.transactionId,_that.amount,_that.currency,_that.cardLast4,_that.message,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String status,  String transactionId, @JsonKey(fromJson: _amountFromJson)  double amount,  String currency,  String cardLast4,  String message, @JsonKey(fromJson: _dateTimeFromJson)  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _CreditCardPaymentResponseModel():
return $default(_that.success,_that.status,_that.transactionId,_that.amount,_that.currency,_that.cardLast4,_that.message,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String status,  String transactionId, @JsonKey(fromJson: _amountFromJson)  double amount,  String currency,  String cardLast4,  String message, @JsonKey(fromJson: _dateTimeFromJson)  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _CreditCardPaymentResponseModel() when $default != null:
return $default(_that.success,_that.status,_that.transactionId,_that.amount,_that.currency,_that.cardLast4,_that.message,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreditCardPaymentResponseModel implements CreditCardPaymentResponseModel {
   _CreditCardPaymentResponseModel({required this.success, required this.status, required this.transactionId, @JsonKey(fromJson: _amountFromJson) required this.amount, required this.currency, required this.cardLast4, required this.message, @JsonKey(fromJson: _dateTimeFromJson) required this.timestamp});
  factory _CreditCardPaymentResponseModel.fromJson(Map<String, dynamic> json) => _$CreditCardPaymentResponseModelFromJson(json);

@override final  bool success;
@override final  String status;
@override final  String transactionId;
@override@JsonKey(fromJson: _amountFromJson) final  double amount;
@override final  String currency;
@override final  String cardLast4;
@override final  String message;
@override@JsonKey(fromJson: _dateTimeFromJson) final  DateTime timestamp;

/// Create a copy of CreditCardPaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreditCardPaymentResponseModelCopyWith<_CreditCardPaymentResponseModel> get copyWith => __$CreditCardPaymentResponseModelCopyWithImpl<_CreditCardPaymentResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreditCardPaymentResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreditCardPaymentResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.status, status) || other.status == status)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.cardLast4, cardLast4) || other.cardLast4 == cardLast4)&&(identical(other.message, message) || other.message == message)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,status,transactionId,amount,currency,cardLast4,message,timestamp);

@override
String toString() {
  return 'CreditCardPaymentResponseModel(success: $success, status: $status, transactionId: $transactionId, amount: $amount, currency: $currency, cardLast4: $cardLast4, message: $message, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$CreditCardPaymentResponseModelCopyWith<$Res> implements $CreditCardPaymentResponseModelCopyWith<$Res> {
  factory _$CreditCardPaymentResponseModelCopyWith(_CreditCardPaymentResponseModel value, $Res Function(_CreditCardPaymentResponseModel) _then) = __$CreditCardPaymentResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, String status, String transactionId,@JsonKey(fromJson: _amountFromJson) double amount, String currency, String cardLast4, String message,@JsonKey(fromJson: _dateTimeFromJson) DateTime timestamp
});




}
/// @nodoc
class __$CreditCardPaymentResponseModelCopyWithImpl<$Res>
    implements _$CreditCardPaymentResponseModelCopyWith<$Res> {
  __$CreditCardPaymentResponseModelCopyWithImpl(this._self, this._then);

  final _CreditCardPaymentResponseModel _self;
  final $Res Function(_CreditCardPaymentResponseModel) _then;

/// Create a copy of CreditCardPaymentResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? status = null,Object? transactionId = null,Object? amount = null,Object? currency = null,Object? cardLast4 = null,Object? message = null,Object? timestamp = null,}) {
  return _then(_CreditCardPaymentResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,cardLast4: null == cardLast4 ? _self.cardLast4 : cardLast4 // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
