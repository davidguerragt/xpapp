import 'package:xpapp/features/login/data/data_sources/firebase_user_info_datasource.dart';
import 'package:xpapp/features/login/data/data_sources/local_storage_login_datasource.dart';
import 'package:xpapp/features/login/data/models/user_info_model.dart';
import 'package:xpapp/features/login/domain/entities/user_info_entity.dart';
import 'package:xpapp/features/login/domain/repository/user_info_repository.dart';

class UserInfoRepositoryImpl extends UserInfoRepository {
  final FirebaseUserInfoDatasource _datasource;
  final LocalStorageLoginDatasource _localStorageDatasource;

  UserInfoRepositoryImpl({
    FirebaseUserInfoDatasource? datasource,
    LocalStorageLoginDatasource? localStorageDatasource,
  }) : _datasource = datasource ?? FirebaseUserInfoDatasource(),
       _localStorageDatasource =
           localStorageDatasource ?? LocalStorageLoginDatasource();

  @override
  Future<UserInfoEntity> getUserInfo(String user) async {
    final UserInfoModel model = await _datasource.getUserInfo(user);
    return model.toEntity();
  }

  @override
  Future<String> saveUserInfo(UserInfoEntity user) async {
    final UserInfoModel model = UserInfoModel.fromEntity(user);
    return _datasource.saveUserInfo(model);
  }

  @override
  Future<UserInfoEntity?> getUserInfoFromLocalStorage() async {
    final UserInfoModel? model = await _localStorageDatasource.getUserInfo();
    if (model == null) {
      return null;
    }
    return model.toEntity();
  }

  @override
  Future<void> saveUserInfoToLocalStorage(UserInfoEntity user) async {
    final UserInfoModel model = UserInfoModel.fromEntity(user);
    await _localStorageDatasource.saveUserInfo(model);
  }
}
