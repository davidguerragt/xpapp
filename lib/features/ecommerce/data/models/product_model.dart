import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  factory ProductModel({
    required String id,
    required String title,
    required double price,
    required String image,
    required String description,
    required List<String> sizes,
    required List<String> colors,
    required List<String> sections,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.fromEntity(ProductEntity e) {
    return ProductModel(
      id: e.id,
      title: e.title,
      price: e.price,
      image: e.image,
      description: e.description,
      sizes: e.sizes,
      colors: e.colors,
      sections: e.sections,
    );
  }
}
