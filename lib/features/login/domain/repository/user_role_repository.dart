import 'package:xpapp/features/login/domain/entities/user_role_entity.dart';

abstract class UserRoleRepository {
  Future<UserRoleEntity> getUserRole(String user);
  Future<String> saveUserRole(UserRoleEntity user);
}
