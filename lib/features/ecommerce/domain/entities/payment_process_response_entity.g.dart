// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_process_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentProcessResponseEntity _$PaymentProcessResponseEntityFromJson(
  Map<String, dynamic> json,
) => _PaymentProcessResponseEntity(
  success: json['success'] as bool,
  status: json['status'] as String,
  transactionId: json['transactionId'] as String,
  amount: _amountFromJson(json['amount']),
  currency: json['currency'] as String,
  cardLast4: json['cardLast4'] as String,
  message: json['message'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$PaymentProcessResponseEntityToJson(
  _PaymentProcessResponseEntity instance,
) => <String, dynamic>{
  'success': instance.success,
  'status': instance.status,
  'transactionId': instance.transactionId,
  'amount': instance.amount,
  'currency': instance.currency,
  'cardLast4': instance.cardLast4,
  'message': instance.message,
  'timestamp': instance.timestamp.toIso8601String(),
};
