import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/login/data/models/user_info_model.dart';

class FirebaseUserInfoDatasource {
  final FirebaseFirestore _firestore;

  FirebaseUserInfoDatasource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<UserInfoModel> getUserInfo(String email) async {
    try {
      final collectionRef = _firestore.collection('users');
      final query = collectionRef.where('user', isEqualTo: email.toString());
      final result = await query.get();
      final ur = result.docs
          .map((doc) => UserInfoModel.fromJson(doc.data()))
          .first;
      return ur;
    } on Exception catch (e) {
      throw Exception('Error al obtener información del usuario: $e');
    }
  }

  Future<String> saveUserInfo(UserInfoModel userInfo) async {
    try {
      final collectionRef = _firestore.collection('users');
      final docRef = await collectionRef.add(userInfo.toJson());
      return docRef.id;
    } catch (e) {
      throw Exception('Error al registrar información del usuario: $e');
    }
  }
}
