import 'package:xpapp/features/login/data/repository/user_role_repository_impl.dart';
import 'package:xpapp/features/login/domain/entities/user_role_entity.dart';
import 'package:xpapp/features/login/domain/repository/user_role_repository.dart';

class SaveUserRoleUseCase {
  final UserRoleRepository _repository;

  SaveUserRoleUseCase({UserRoleRepository? repository})
    : _repository = repository ?? UserRoleRepositoryImpl();

  Future<String> saveUserRole(UserRoleEntity userRole) {
    return _repository.saveUserRole(userRole);
  }
}
