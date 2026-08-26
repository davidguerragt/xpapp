// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    _UserInfoModel(
      user: json['user'] as String,
      surname: json['surname'] as String,
      firstName: json['first_name'] as String,
      fullName: json['full_name'] as String,
      role: json['role'] as String,
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UserInfoModelToJson(_UserInfoModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'surname': instance.surname,
      'first_name': instance.firstName,
      'full_name': instance.fullName,
      'role': instance.role,
      'tokens': instance.tokens,
    };
