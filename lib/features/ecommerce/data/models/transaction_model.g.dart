// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      id: json['id'] as String,
      date: json['date'] as String,
      user: json['user'] as String,
      amount: (json['amount'] as num).toDouble(),
      holderName: json['holderName'] as String,
      cardNumber: json['cardNumber'] as String,
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'user': instance.user,
      'amount': instance.amount,
      'holderName': instance.holderName,
      'cardNumber': instance.cardNumber,
    };
