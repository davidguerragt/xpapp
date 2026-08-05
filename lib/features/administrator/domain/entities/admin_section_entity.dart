import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:xpapp/features/administrator/data/models/admin_section_model.dart';

part 'admin_section_entity.freezed.dart';
part 'admin_section_entity.g.dart';

@freezed
abstract class AdminSectionEntity with _$AdminSectionEntity {
  factory AdminSectionEntity({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    // ignore: deprecated_member_use
    @JsonKey(ignore: true) XFile? imageFile,
  }) = _AdminSectionEntity;

  factory AdminSectionEntity.fromJson(Map<String, dynamic> json) =>
      _AdminSectionEntity.fromJson(json);

  factory AdminSectionEntity.fromModel(AdminSectionModel model) =>
      AdminSectionEntity(
        id: model.id,
        name: model.name,
        description: model.description,
        imageUrl: model.imageUrl,
      );
}

extension AdminSectionEntityX on AdminSectionEntity {
  AdminSectionModel toModel() => AdminSectionModel(
    id: id,
    name: name,
    description: description,
    imageUrl: imageUrl,
  );
}
