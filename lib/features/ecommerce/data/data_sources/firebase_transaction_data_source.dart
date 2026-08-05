import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/ecommerce/data/models/transaction_model.dart';

class FirebaseTransactionDataSource {
  final FirebaseFirestore _firestore;

  FirebaseTransactionDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Stream<List<TransactionModel>> getTransactionsStream(String user) {
    return _firestore
        .collection('transactions')
        .where('user', isEqualTo: user)
        .orderBy('date', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((e) => TransactionModel.fromJson(e.data()))
              .toList(),
        );
  }

  Future<List<TransactionModel>> getTransactionsByPage(
    String user, {
    int limit = 10,
    String? id,
  }) async {
    try {
      Query<Map<String, dynamic>> query = _firestore
          .collection('transactions')
          .where('user', isEqualTo: user)
          .orderBy('id', descending: true);

      if (id != null && id.trim().isNotEmpty && id != '0') {
        query = query.startAfter([id]);
      }

      final snapshot = await query.limit(limit).get();
      return snapshot.docs
          .map((e) => TransactionModel.fromJson(e.data()))
          .toList();
    } on Exception catch (e) {
      throw Exception('Error fetching transactions: $e');
    }
  }

  Future<String> saveTransaction(TransactionModel transaction) async {
    try {
      final collectionRef = _firestore.collection('transactions');
      final docRef = await collectionRef.add(transaction.toJson());
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir la transacción: $e');
      throw Exception('Error al subir la transacción: $e');
    }
  }
}
