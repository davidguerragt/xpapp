import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/core/consts/api_consts.dart';
import 'package:xpapp/features/administrator/data/models/admin_section_model.dart';

class FirebaseAdminSectionDataSource {
  final FirebaseFirestore _firestore;

  FirebaseAdminSectionDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<AdminSectionModel> getSectionById(String id) async {
    final docRef = _firestore.collection(FireStoreCollections.sections).doc(id);
    final docSnapshot = await docRef.get();

    if (docSnapshot.exists) {
      return AdminSectionModel.fromJson(docSnapshot.data()!);
    } else {
      throw Exception('Section not found');
    }
  }

  Future<List<AdminSectionModel>> getSections() async {
    final collectionRef = _firestore.collection(FireStoreCollections.sections);
    final result = await collectionRef.get();
    return result.docs
        .map((doc) => AdminSectionModel.fromJson(doc.data()))
        .toList();
  }

  Future<String> addSection(AdminSectionModel sectionData) async {
    try {
      final collectionRef = _firestore.collection(
        FireStoreCollections.sections,
      );
      final docRef = await collectionRef.add(sectionData.toJson());
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir la sección: $e');
      throw Exception('Error al subir la sección');
    }
  }

  Future<String> updateSection(AdminSectionModel sectionData) async {
    try {
      DocumentReference docRef = _firestore
          .collection(FireStoreCollections.sections)
          .doc(sectionData.id);
      await docRef.update(sectionData.toJson());
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir la sección: $e');
      throw Exception('Error al subir la sección');
    }
  }

  Future<void> deleteSection(String id) async {
    try {
      DocumentReference docRef = _firestore
          .collection(FireStoreCollections.sections)
          .doc(id);
      await docRef.delete();
    } catch (e) {
      // ignore: avoid_print
      print('Error al eliminar la sección: $e');
      throw Exception('Error al eliminar la sección');
    }
  }
}
