import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/administrator/data/models/admin_product_model.dart';
part 'admin_product_entity.freezed.dart';

@freezed
abstract class AdminProductEntity with _$AdminProductEntity {
  const factory AdminProductEntity({
    required String id,
    required String title,
    required String description,
    required double price,
    required String imageUrl,
    required List<String> sizes,
    required List<String> colors,
    required List<String> sections,
  }) = _AdminProductEntity;

  factory AdminProductEntity.fromModel(AdminProductModel model) =>
      AdminProductEntity(
        id: model.id,
        title: model.title,
        description: model.description,
        price: model.price,
        imageUrl: model.imageUrl,
        sizes: model.sizes,
        colors: model.colors,
        sections: model.sections,
      );
}

extension AdminProductEntityX on AdminProductEntity {
  AdminProductModel toModel() => AdminProductModel(
    id: id,
    title: title,
    description: description,
    price: price,
    imageUrl: imageUrl,
    sizes: sizes,
    colors: colors,
    sections: sections,
  );
}
