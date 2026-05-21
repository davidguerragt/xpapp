import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/bag_product_model.dart';

part 'bag_product_entity.freezed.dart';

@freezed
abstract class BagProductEntity with _$BagProductEntity {
  const factory BagProductEntity({
    required final String id,
    required final String name,
    required final String imageUrl,
    required final double price,
    required final int quantity,
    required final String size,
    required final String color,
  }) = _BagProductEntity;

  factory BagProductEntity.fromModel(BagProductModel model) {
    return BagProductEntity(
      id: model.id,
      name: model.name,
      imageUrl: model.imageUrl,
      price: model.price,
      quantity: model.quantity,
      size: model.size,
      color: model.color,
    );
  }

  BagProductModel toModel() {
    return BagProductModel(
      color: color,
      id: id,
      imageUrl: imageUrl,
      name: name,
      price: price,
      quantity: quantity,
      size: size,
    );
  }
}
