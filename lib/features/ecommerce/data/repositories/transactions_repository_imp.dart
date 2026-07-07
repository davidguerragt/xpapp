import 'package:xpapp/features/ecommerce/data/data_sources/firebase_transaction_data_source.dart';
import 'package:xpapp/features/ecommerce/data/models/transaction_model.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/transaction_repository.dart';

class TransactionRepositoryImp implements TransactionRepository {
  final FirebaseTransactionDataSource _dataSource;

  TransactionRepositoryImp({FirebaseTransactionDataSource? dataSource})
    : _dataSource = dataSource ?? FirebaseTransactionDataSource();

  @override
  Stream<List<TransactionEntity>> getTransactions(String user) {
    final transactions = _dataSource.getTransactions(user);
    return transactions.map(
      (transactionList) => transactionList
          .map((transaction) => TransactionEntity.fromModel(transaction))
          .toList(),
    );
  }

  @override
  Future<String> saveTransaction(TransactionEntity transaction) {
    final TransactionModel m = TransactionModel.fromEntity(transaction);
    return _dataSource.saveTransaction(m);
  }
}
