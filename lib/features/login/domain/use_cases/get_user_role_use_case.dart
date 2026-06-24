import 'package:xpapp/features/login/data/repository/user_role_repository_impl.dart';
import 'package:xpapp/features/login/domain/entities/user_role_entity.dart';
import 'package:xpapp/features/login/domain/repository/user_role_repository.dart';

class GetUserRoleUseCase {
  final UserRoleRepository _repository;

  GetUserRoleUseCase({UserRoleRepository? repository})
    : _repository = repository ?? UserRoleRepositoryImpl();

  Future<UserRoleEntity> getUserRole(String email) {
    return _repository.getUserRole(email);
  }
}
