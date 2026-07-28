// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_section_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminSectionEntity _$AdminSectionEntityFromJson(Map<String, dynamic> json) =>
    _AdminSectionEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$AdminSectionEntityToJson(_AdminSectionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
