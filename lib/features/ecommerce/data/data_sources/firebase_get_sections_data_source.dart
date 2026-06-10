import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/ecommerce/data/models/section_model.dart';

class FirebaseGetSectionsDataSource {
  final FirebaseFirestore _firestore;

  FirebaseGetSectionsDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<List<SectionModel>> getSections() async {
    final sectionsResult = await _firestore.collection('sections').get();
    return sectionsResult.docs
        .where((doc) => doc.data()['status'] == 'A')
        .map((doc) => SectionModel.fromJson(doc.data()))
        .toList();
  }
}
