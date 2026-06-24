import 'package:xpapp/features/login/data/repository/authentication_impl_repository.dart';
import 'package:xpapp/features/login/domain/entities/user_entity.dart';
import 'package:xpapp/features/login/domain/repository/authentication_repository.dart';

class LoginUseCase {
  final AuthenticationRepository _authRepository;

  LoginUseCase({AuthenticationRepository? repository})
    : _authRepository = repository ?? AuthenticationImplRepository();

  Future<UserEntity> call(String email, String password) async {
    if (email != '' && password != '') {
      final user = await _authRepository.login(email, password);
      return user;
    } else {
      // Login failed
      throw Exception('Invalid email or password');
    }
  }
}
