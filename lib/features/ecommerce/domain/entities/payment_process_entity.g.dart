// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_process_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentProcessEntity _$PaymentProcessEntityFromJson(
  Map<String, dynamic> json,
) => _PaymentProcessEntity(
  cardNumber: json['cardNumber'] as String,
  expiryDate: json['expiryDate'] as String,
  cvv: json['cvv'] as String,
  cardHolderName: json['cardHolderName'] as String,
  amount: (json['amount'] as num).toDouble(),
  currency: json['currency'] as String,
  bagProducts: (json['bagProducts'] as List<dynamic>)
      .map((e) => BagProductEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PaymentProcessEntityToJson(
  _PaymentProcessEntity instance,
) => <String, dynamic>{
  'cardNumber': instance.cardNumber,
  'expiryDate': instance.expiryDate,
  'cvv': instance.cvv,
  'cardHolderName': instance.cardHolderName,
  'amount': instance.amount,
  'currency': instance.currency,
  'bagProducts': instance.bagProducts,
};
