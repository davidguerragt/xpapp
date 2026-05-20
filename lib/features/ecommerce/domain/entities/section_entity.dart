import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/section_model.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';

part 'section_entity.freezed.dart';

@freezed
abstract class SectionEntity with _$SectionEntity {
  const factory SectionEntity({
    required String id,
    required String title,
    required String description,
    required String image,
    @Default([]) List<ProductEntity> products,
  }) = _SectionEntity;

  factory SectionEntity.fromModel(SectionModel model) {
    return SectionEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      image: model.image,
    );
  }
}
