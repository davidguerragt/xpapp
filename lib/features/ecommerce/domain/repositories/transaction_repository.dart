import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';

abstract class TransactionRepository {
  Stream<List<TransactionEntity>> getTransactions(String user);
  Future<String> saveTransaction(TransactionEntity entity);
  Future<List<TransactionEntity>> getTransactionsByPage(
    String user, {
    int limit = 10,
    String? id,
  });
  Future<TransactionEntity?> getTransactionById(String transactionId);
}
