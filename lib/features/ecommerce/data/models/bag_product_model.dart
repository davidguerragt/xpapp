import 'package:freezed_annotation/freezed_annotation.dart';

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
}
