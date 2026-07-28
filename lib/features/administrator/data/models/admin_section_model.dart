import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'admin_section_model.freezed.dart';
part 'admin_section_model.g.dart';

@freezed
abstract class AdminSectionModel with _$AdminSectionModel {
  factory AdminSectionModel({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    @JsonKey(includeFromJson: false, includeToJson: false) XFile? imageFile,
  }) = _AdminSectionModel;

  factory AdminSectionModel.fromJson(Map<String, dynamic> json) =>
      _AdminSectionModel.fromJson(json);
}
