import 'package:xpapp/features/login/data/repository/authentication_impl_repository.dart';
import 'package:xpapp/features/login/domain/repository/authentication_repository.dart';

class LogOutUseCase {
  final AuthenticationRepository _repository;

  LogOutUseCase({AuthenticationRepository? repository})
    : _repository = repository ?? AuthenticationImplRepository();

  Future<void> call() async {
    await _repository.logout();
  }
}
