import 'package:xpapp/features/login/data/repository/user_info_repository_impl.dart';
import 'package:xpapp/features/login/domain/repository/user_info_repository.dart';

class UpdateUserInfoUseCase {
  final UserInfoRepository _repository;

  UpdateUserInfoUseCase({UserInfoRepository? repository})
    : _repository = repository ?? UserInfoRepositoryImpl();
}
