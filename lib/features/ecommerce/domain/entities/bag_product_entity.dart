import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/bag_product_model.dart';

part 'bag_product_entity.freezed.dart';
part 'bag_product_entity.g.dart';

@freezed
abstract class BagProductEntity with _$BagProductEntity {
  const factory BagProductEntity({
    required String id,
    required String name,
    required String imageUrl,
    required double price,
    required int quantity,
    required String size,
    required String color,
  }) = _BagProductEntity;

  factory BagProductEntity.fromJson(Map<String, dynamic> json) =>
      _$BagProductEntityFromJson(json);

  factory BagProductEntity.fromModel(BagProductModel model) => BagProductEntity(
    id: model.id,
    name: model.name,
    imageUrl: model.imageUrl,
    price: model.price,
    quantity: model.quantity,
    size: model.size,
    color: model.color,
  );
}

extension BagProductEntityX on BagProductEntity {
  BagProductModel toModel() => BagProductModel(
    id: id,
    name: name,
    imageUrl: imageUrl,
    price: price,
    quantity: quantity,
    size: size,
    color: color,
  );
}
