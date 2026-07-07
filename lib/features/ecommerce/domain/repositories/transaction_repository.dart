import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';

abstract class TransactionRepository {
  Stream<List<TransactionEntity>> getTransactions(String user);
  Future<String> saveTransaction(TransactionEntity entity);
}
