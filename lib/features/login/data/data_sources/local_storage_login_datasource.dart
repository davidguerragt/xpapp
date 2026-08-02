import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:xpapp/features/login/data/models/user_info_model.dart';

class LocalStorageLoginDatasource {
  final SharedPreferences? _sharedPreferences;

  LocalStorageLoginDatasource({SharedPreferences? sharedPreferences})
    : _sharedPreferences = sharedPreferences;

  Future<SharedPreferences> _getSharedPreferences() async {
    return _sharedPreferences ?? SharedPreferences.getInstance();
  }

  Future<void> saveUserInfo(UserInfoModel userInfo) async {
    final sharedPreferences = await _getSharedPreferences();
    await sharedPreferences.setString(
      'userInfo',
      jsonEncode(userInfo.toJson()),
    );
  }

  Future<UserInfoModel?> getUserInfo() async {
    try {
      final sharedPreferences = await _getSharedPreferences();
      final userInfoString = sharedPreferences.getString('userInfo');
      if (userInfoString != null) {
        return UserInfoModel.fromJson(
          jsonDecode(userInfoString) as Map<String, Object?>,
        );
      }
      return null;
    } on Exception catch (e) {
      throw Exception('Error al obtener información del usuario: $e');
    }
  }
}
