import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/login/domain/entities/user_role_entity.dart';

part 'user_role_model.freezed.dart';
part 'user_role_model.g.dart';

@freezed
abstract class UserRoleModel with _$UserRoleModel {
  factory UserRoleModel({required String user, required String role}) =
      _UserRoleModel;

  factory UserRoleModel.fromJson(Map<String, Object?> json) =>
      _$UserRoleModelFromJson(json);

  factory UserRoleModel.fromEntity(UserRoleEntity e) =>
      UserRoleModel(user: e.user, role: e.role);
}

extension UserRoleModelX on UserRoleModel {
  UserRoleEntity toEntity() {
    return UserRoleEntity(user: user, role: role);
  }
}
