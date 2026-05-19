import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/product_model.dart';

part 'product_entity.freezed.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required String id,
    required String title,
    required String price,
    required String image,
    required String description,
    required List<String> sizes,
    required List<String> colors,
  }) = _ProductEntity;

  factory ProductEntity.fromModel(ProductModel model) {
    return ProductEntity(
      id: model.id,
      title: model.title,
      price: model.price,
      image: model.image,
      description: model.description,
      sizes: model.sizes,
      colors: model.colors,
    );
  }
}
