import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_entity.freezed.dart';

@freezed
abstract class UserRoleEntity with _$UserRoleEntity {
  const factory UserRoleEntity({required String user, required String role}) =
      _UserRoleEntity;
}
