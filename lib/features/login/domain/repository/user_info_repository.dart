import 'package:xpapp/features/login/domain/entities/user_info_entity.dart';

abstract class UserInfoRepository {
  Future<UserInfoEntity> getUserInfo(String user);
  Future<String> saveUserInfo(UserInfoEntity userInfo);
  Future<UserInfoEntity?> getUserInfoFromLocalStorage();
  Future<void> saveUserInfoToLocalStorage(UserInfoEntity userInfo);
}
