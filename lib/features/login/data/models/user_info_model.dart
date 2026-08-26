import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/login/domain/entities/user_info_entity.dart';

part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';

@freezed
abstract class UserInfoModel with _$UserInfoModel {
  factory UserInfoModel({
    @JsonKey(name: 'user') required String user,
    @JsonKey(name: 'surname') required String surname,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'tokens') List<String>? tokens,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, Object?> json) =>
      _$UserInfoModelFromJson(json);

  factory UserInfoModel.fromEntity(UserInfoEntity e) => UserInfoModel(
    user: e.user,
    surname: e.surname,
    firstName: e.firstName,
    fullName: e.fullName,
    role: e.role,
    tokens: e.tokens,
  );
}

extension UserInfoModelX on UserInfoModel {
  UserInfoEntity toEntity() {
    return UserInfoEntity(
      user: user,
      surname: surname,
      firstName: firstName,
      fullName: fullName,
      role: role,
      tokens: tokens,
    );
  }
}
