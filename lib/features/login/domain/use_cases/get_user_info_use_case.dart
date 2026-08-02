import 'package:xpapp/features/login/data/repository/user_info_repository_impl.dart';
import 'package:xpapp/features/login/domain/entities/user_info_entity.dart';
import 'package:xpapp/features/login/domain/repository/user_info_repository.dart';

class GetUserInfoUseCase {
  final UserInfoRepository _repository;

  GetUserInfoUseCase({UserInfoRepository? repository})
    : _repository = repository ?? UserInfoRepositoryImpl();

  Future<UserInfoEntity> getUserInfo(String email) {
    return _repository.getUserInfo(email);
  }
}
