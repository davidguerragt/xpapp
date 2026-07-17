// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminProductModel _$AdminProductModelFromJson(Map<String, dynamic> json) =>
    _AdminProductModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
      colors: (json['colors'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sections: (json['sections'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AdminProductModelToJson(_AdminProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'sizes': instance.sizes,
      'colors': instance.colors,
      'sections': instance.sections,
    };
