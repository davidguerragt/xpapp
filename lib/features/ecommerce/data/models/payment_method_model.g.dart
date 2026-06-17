// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethodModel _$PaymentMethodModelFromJson(Map<String, dynamic> json) =>
    _PaymentMethodModel(
      id: json['id'] as String,
      number: json['number'] as String,
      holder: json['holder'] as String,
      behavior: json['behavior'] as String,
      availableFunds: json['availableFunds'] as String,
      declineReason: json['declineReason'] as String,
      expirationDate: json['expirationDate'] as String?,
      cardBrand: json['cardBrand'] as String?,
    );

Map<String, dynamic> _$PaymentMethodModelToJson(_PaymentMethodModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'holder': instance.holder,
      'behavior': instance.behavior,
      'availableFunds': instance.availableFunds,
      'declineReason': instance.declineReason,
      'expirationDate': instance.expirationDate,
      'cardBrand': instance.cardBrand,
    };
