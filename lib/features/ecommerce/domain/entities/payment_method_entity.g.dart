// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethodEntity _$PaymentMethodEntityFromJson(Map<String, dynamic> json) =>
    _PaymentMethodEntity(
      id: json['id'] as String,
      number: json['number'] as String,
      holder: json['holder'] as String,
      behavior: json['behavior'] as String,
      availableFunds: json['availableFunds'] as String,
      declineReason: json['declineReason'] as String,
      expirationDate: json['expirationDate'] as String,
      cardBrand: json['cardBrand'] as String,
    );

Map<String, dynamic> _$PaymentMethodEntityToJson(
  _PaymentMethodEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'number': instance.number,
  'holder': instance.holder,
  'behavior': instance.behavior,
  'availableFunds': instance.availableFunds,
  'declineReason': instance.declineReason,
  'expirationDate': instance.expirationDate,
  'cardBrand': instance.cardBrand,
};
