import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_entity.freezed.dart';

@freezed
abstract class UserInfoEntity with _$UserInfoEntity {
  const factory UserInfoEntity({
    required String user,
    required String surname,
    required String firstName,
    required String fullName,
    required String role,
    List<String>? tokens,
  }) = _UserInfoEntity;
}
