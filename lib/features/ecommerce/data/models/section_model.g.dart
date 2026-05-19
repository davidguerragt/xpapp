// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SectionModel _$SectionModelFromJson(Map<String, dynamic> json) =>
    _SectionModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$SectionModelToJson(_SectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
    };
