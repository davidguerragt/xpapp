import 'package:image_picker/image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_product_image_model.freezed.dart';
part 'admin_product_image_model.g.dart';

@freezed
abstract class AdminProductImageModel with _$AdminProductImageModel {
  factory AdminProductImageModel({
    required String id,
    required String productId,
    required String imageUrl,
    @JsonKey(includeFromJson: false, includeToJson: false) XFile? imageFile,
  }) = _AdminProductImageModel;

  factory AdminProductImageModel.fromJson(Map<String, dynamic> json) =>
      _AdminProductImageModel.fromJson(json);
}
