import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_model.freezed.dart';
part 'section_model.g.dart';

@freezed
abstract class SectionModel with _$SectionModel {
  factory SectionModel({
    required String id,
    required String title,
    required String description,
    required String image,
  }) = _SectionModel;

  factory SectionModel.fromJson(Map<String, dynamic> json) =>
      _$SectionModelFromJson(json);
}
