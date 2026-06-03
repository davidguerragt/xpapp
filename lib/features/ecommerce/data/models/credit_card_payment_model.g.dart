// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreditCardPaymentModel _$CreditCardPaymentModelFromJson(
  Map<String, dynamic> json,
) => _CreditCardPaymentModel(
  cardNumber: json['cardNumber'] as String,
  expiryDate: json['expiryDate'] as String,
  cvv: json['cvv'] as String,
  cardHolderName: json['cardHolderName'] as String,
  amount: (json['amount'] as num).toDouble(),
);

Map<String, dynamic> _$CreditCardPaymentModelToJson(
  _CreditCardPaymentModel instance,
) => <String, dynamic>{
  'cardNumber': instance.cardNumber,
  'expiryDate': instance.expiryDate,
  'cvv': instance.cvv,
  'cardHolderName': instance.cardHolderName,
  'amount': instance.amount,
};
