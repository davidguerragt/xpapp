import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/ecommerce/data/models/section_model.dart';

class FirebaseSectionsDataSource {
  final FirebaseFirestore _firestore;

  FirebaseSectionsDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<List<SectionModel>> getSections() async {
    final sectionsResult = await _firestore.collection('sections').get();
    return sectionsResult.docs
        .where((doc) => doc.data()['status'] == 'A')
        .map((doc) => SectionModel.fromJson(doc.data()))
        .toList();
  }

  Future<String> postSection(SectionModel section) async {
    try {
      final collectionRef = _firestore.collection('sections');
      final docRef = await collectionRef.add(section.toJson());
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir la sección: $e');
      throw Exception('Error al subir la seccion: $e.message');
    }
  }
}
