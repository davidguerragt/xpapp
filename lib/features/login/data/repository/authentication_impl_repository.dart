import 'package:xpapp/features/login/data/data_sources/firebase_login_datasource.dart';
import 'package:xpapp/features/login/data/models/user_model.dart';
import 'package:xpapp/features/login/domain/entities/user_entity.dart';
import 'package:xpapp/features/login/domain/repository/authentication_repository.dart';

class AuthenticationImplRepository implements AuthenticationRepository {
  final FirebaseLoginDataSource _dataSource = FirebaseLoginDataSource();
  @override
  Future<UserEntity> login(String email, String password) async {
    // ignore: avoid_print
    print('email/password at AuthenticationImplRepository: $email / $password');
    final UserModel user = await _dataSource.login(email, password);
    final UserEntity userEntity = UserEntity(
      id: user.id,
      name: user.name,
      email: user.email,
    );
    return userEntity;
  }

  @override
  Future<UserEntity?> getCurrentUser() async {
    final user = _dataSource.getCurrentUser();
    if (user == null) {
      return null;
    }

    return UserEntity(id: user.id, name: user.name, email: user.email);
  }

  @override
  Future<bool> logout() async {
    return await _dataSource.logout();
  }

  @override
  Future<bool> isLoggedIn() async {
    return await _dataSource.isLoggedIn();
  }

  @override
  Future<UserEntity> register(String email, String password) async {
    final UserModel user = await _dataSource.register(email, password);
    final UserEntity userEntity = UserEntity(
      id: user.id,
      name: user.name,
      email: user.email,
    );
    return userEntity;
  }
}
