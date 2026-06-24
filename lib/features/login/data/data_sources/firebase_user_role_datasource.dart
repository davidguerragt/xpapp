import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/login/data/models/user_role_model.dart';

class FirebaseUserRoleDatasource {
  final FirebaseFirestore _firestore;

  FirebaseUserRoleDatasource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<UserRoleModel> getUserRole(String email) async {
    final collectionRef = _firestore.collection('users');
    final query = collectionRef.where('user', isEqualTo: email.toString());
    final result = await query.get();
    final ur = result.docs
        .map((doc) => UserRoleModel.fromJson(doc.data()))
        .first;
    return ur;
  }

  Future<String> saveUserRole(UserRoleModel userRole) async {
    try {
      final collectionRef = _firestore.collection('users');
      final docRef = await collectionRef.add(userRole.toJson());
      return docRef.id;
    } catch (e) {
      throw Exception('Error al registrar rol del usuario: $e');
    }
  }
}
