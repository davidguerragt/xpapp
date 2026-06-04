// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bag_product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BagProductEntity _$BagProductEntityFromJson(Map<String, dynamic> json) =>
    _BagProductEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      size: json['size'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$BagProductEntityToJson(_BagProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
      'quantity': instance.quantity,
      'size': instance.size,
      'color': instance.color,
    };
