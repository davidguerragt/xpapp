// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bag_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BagProductModel _$BagProductModelFromJson(Map<String, dynamic> json) =>
    _BagProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      size: json['size'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$BagProductModelToJson(_BagProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'quantity': instance.quantity,
      'size': instance.size,
      'color': instance.color,
    };
