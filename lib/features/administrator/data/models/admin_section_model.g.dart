// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminSectionModel _$AdminSectionModelFromJson(Map<String, dynamic> json) =>
    _AdminSectionModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$AdminSectionModelToJson(_AdminSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
