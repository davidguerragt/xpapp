// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_product_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminProductImageModel _$AdminProductImageModelFromJson(
  Map<String, dynamic> json,
) => _AdminProductImageModel(
  id: json['id'] as String,
  productId: json['productId'] as String,
  imageUrl: json['imageUrl'] as String,
);

Map<String, dynamic> _$AdminProductImageModelToJson(
  _AdminProductImageModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'imageUrl': instance.imageUrl,
};
