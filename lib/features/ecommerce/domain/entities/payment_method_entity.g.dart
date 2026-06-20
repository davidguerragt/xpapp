// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethodEntity _$PaymentMethodEntityFromJson(Map<String, dynamic> json) =>
    _PaymentMethodEntity(
      number: json['number'] as String,
      holder: json['holder'] as String,
      behavior: json['behavior'] as String,
      availableFunds: (json['availableFunds'] as num).toInt(),
      declineReason: json['declineReason'] as String,
      brand: json['brand'] as String,
    );

Map<String, dynamic> _$PaymentMethodEntityToJson(
  _PaymentMethodEntity instance,
) => <String, dynamic>{
  'number': instance.number,
  'holder': instance.holder,
  'behavior': instance.behavior,
  'availableFunds': instance.availableFunds,
  'declineReason': instance.declineReason,
  'brand': instance.brand,
};
