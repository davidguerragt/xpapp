import 'package:xpapp/features/login/data/repository/user_info_repository_impl.dart';
import 'package:xpapp/features/login/domain/entities/user_info_entity.dart';
import 'package:xpapp/features/login/domain/repository/user_info_repository.dart';

class SaveUserInfoUseCase {
  final UserInfoRepository _repository;

  SaveUserInfoUseCase({UserInfoRepository? repository})
    : _repository = repository ?? UserInfoRepositoryImpl();

  Future<String> saveUserInfo(UserInfoEntity userInfo) {
    return _repository.saveUserInfo(userInfo);
  }
}
