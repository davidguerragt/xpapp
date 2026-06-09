import 'package:xpapp/features/login/data/repository/authentication_impl_repository.dart';
import 'package:xpapp/features/login/domain/repository/authentication_repository.dart';

class IsLoggedInUseCase {
  final AuthenticationRepository _repository;
  IsLoggedInUseCase({AuthenticationRepository? repository})
    : _repository = repository ?? AuthenticationImplRepository();

  Future<bool> call() async {
    return await _repository.isLoggedIn();
  }
}
