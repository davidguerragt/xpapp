import 'package:xpapp/features/login/data/repository/authentication_impl_repository.dart';
import 'package:xpapp/features/login/domain/entities/user_entity.dart';
import 'package:xpapp/features/login/domain/repository/authentication_repository.dart';

class LoginRegisterUseCase {
  final AuthenticationRepository _repository;

  LoginRegisterUseCase({AuthenticationRepository? repository})
    : _repository = repository ?? AuthenticationImplRepository();

  Future<UserEntity> call(String email, String password) async {
    print('email/password at LoginRegisterUseCase: $email / $password');
    if (email != '' && password != '') {
      final user = await _repository.register(email, password);
      return user;
    } else {
      // Login failed
      throw Exception('Invalid email or password');
    }
  }
}
