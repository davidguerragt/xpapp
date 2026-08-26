import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
part 'bag_product_model.freezed.dart';
part 'bag_product_model.g.dart';

@freezed
abstract class BagProductModel with _$BagProductModel {
  factory BagProductModel({
    required String id,
    required String name,
    required String imageUrl,
    required double price,
    required int quantity,
    required String size,
    required String color,
  }) = _BagProductModel;

  factory BagProductModel.fromJson(Map<String, dynamic> json) =>
      _$BagProductModelFromJson(json);

  factory BagProductModel.fromEntity(BagProductEntity entity) {
    return BagProductModel(
      id: entity.id,
      name: entity.name,
      imageUrl: entity.imageUrl,
      price: entity.price,
      quantity: entity.quantity,
      size: entity.size,
      color: entity.color,
    );
  }
}
