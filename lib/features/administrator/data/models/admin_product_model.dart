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
    @JsonKey(defaultValue: '') required String image,
    @JsonKey(defaultValue: []) required List<String> sizes,
    @JsonKey(defaultValue: []) required List<String> colors,
    @JsonKey(defaultValue: []) required List<String> sections,
  }) = _AdminProductModel;

  factory AdminProductModel.fromJson(Map<String, dynamic> json) =>
      _$AdminProductModelFromJson(json);
}
