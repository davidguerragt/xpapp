// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleModel _$SaleModelFromJson(Map<String, dynamic> json) => _SaleModel(
  id: json['id'] as String,
  date: json['date'] as String,
  user: json['user'] as String,
  amount: (json['amount'] as num).toDouble(),
);

Map<String, dynamic> _$SaleModelToJson(_SaleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'user': instance.user,
      'amount': instance.amount,
    };
