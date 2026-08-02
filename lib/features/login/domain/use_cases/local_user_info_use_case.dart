import 'package:xpapp/features/login/data/repository/user_info_repository_impl.dart';
import 'package:xpapp/features/login/domain/repository/user_info_repository.dart';
import 'package:xpapp/features/login/domain/entities/user_info_entity.dart';

class LocalUserInfoUseCase {
  final UserInfoRepository _userInfoRepository;

  LocalUserInfoUseCase({UserInfoRepository? userInfoRepository})
    : _userInfoRepository = userInfoRepository ?? UserInfoRepositoryImpl();

  Future<void> saveUserInfoToLocalStorage(UserInfoEntity user) async {
    await _userInfoRepository.saveUserInfoToLocalStorage(user);
  }

  Future<UserInfoEntity?> getUserInfoFromLocalStorage() async {
    return await _userInfoRepository.getUserInfoFromLocalStorage();
  }
}
