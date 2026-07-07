import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/ecommerce/data/models/transaction_model.dart';

class FirebaseTransactionDataSource {
  final FirebaseFirestore _firestore;

  FirebaseTransactionDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Stream<List<TransactionModel>> getTransactions(String user) {
    return _firestore
        .collection('transactions')
        .where('user', isEqualTo: user)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((e) => TransactionModel.fromJson(e.data()))
              .toList(),
        );
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
