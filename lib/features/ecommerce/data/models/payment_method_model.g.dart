// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethodModel _$PaymentMethodModelFromJson(Map<String, dynamic> json) =>
    _PaymentMethodModel(
      number: json['number'] as String,
      holder: json['holder'] as String,
      behavior: json['behavior'] as String,
      availableFunds: (json['availableFunds'] as num).toInt(),
      declineReason: json['declineReason'] as String,
    );

Map<String, dynamic> _$PaymentMethodModelToJson(_PaymentMethodModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'holder': instance.holder,
      'behavior': instance.behavior,
      'availableFunds': instance.availableFunds,
      'declineReason': instance.declineReason,
    };
