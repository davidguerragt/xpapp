import 'package:xpapp/features/login/data/data_sources/firebase_user_role_datasource.dart';
import 'package:xpapp/features/login/data/models/user_role_model.dart';
import 'package:xpapp/features/login/domain/entities/user_role_entity.dart';
import 'package:xpapp/features/login/domain/repository/user_role_repository.dart';

class UserRoleRepositoryImpl extends UserRoleRepository {
  final FirebaseUserRoleDatasource _datasource;

  UserRoleRepositoryImpl({FirebaseUserRoleDatasource? datasource})
    : _datasource = datasource ?? FirebaseUserRoleDatasource();

  @override
  Future<UserRoleEntity> getUserRole(String user) async {
    final UserRoleModel model = await _datasource.getUserRole(user);
    return model.toEntity();
  }

  @override
  Future<String> saveUserRole(UserRoleEntity user) async {
    final UserRoleModel model = UserRoleModel.fromEntity(user);
    return _datasource.saveUserRole(model);
  }
}
