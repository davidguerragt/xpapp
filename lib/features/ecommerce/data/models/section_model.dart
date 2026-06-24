import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';

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

  factory SectionModel.fromEntity(SectionEntity e) {
    return SectionModel(
      id: e.id,
      title: e.title,
      description: e.description,
      image: e.image,
    );
  }
}
