import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/ecommerce/data/models/sale_model.dart';

class FirebaseSalesDataSource {
  final FirebaseFirestore _firestore;

  FirebaseSalesDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Stream<List<SaleModel>> getSales(String user) {
    return _firestore
        .collection('sales')
        .where('user', isEqualTo: user)
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((e) => SaleModel.fromJson(e.data())).toList(),
        );
  }

  Future<String> postSale(SaleModel sale) async {
    try {
      final collectionRef = _firestore.collection('sales');
      final docRef = await collectionRef.add(sale.toJson());
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir la venta: $e');
      throw Exception('Error al subir la venta: $e');
    }
  }
}
