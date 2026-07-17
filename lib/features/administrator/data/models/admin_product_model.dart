import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_product_model.freezed.dart';
part 'admin_product_model.g.dart';

@freezed
abstract class AdminProductModel with _$AdminProductModel {
  const factory AdminProductModel({
    required String id,
    required String title,
    required String description,
    required double price,
    required String imageUrl,
    required List<String> sizes,
    required List<String> colors,
    required List<String> sections,
  }) = _AdminProductModel;

  factory AdminProductModel.fromJson(Map<String, dynamic> json) =>
      _$AdminProductModelFromJson(json);
}
