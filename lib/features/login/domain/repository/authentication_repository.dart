import 'package:xpapp/features/login/domain/entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<UserEntity> login(String email, String password);
  Future<void> logout();
  Future<bool> isLoggedIn();
  Future<UserEntity> register(String email, String password);
}
