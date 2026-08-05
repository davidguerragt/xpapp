import 'package:xpapp/features/ecommerce/data/repositories/transaction_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/transaction_repository.dart';

class TransactionsStreamGetUseCase {
  final TransactionRepository _repository;

  TransactionsStreamGetUseCase({TransactionRepository? repository})
    : _repository = repository ?? TransactionRepositoryImpl();

  Stream<List<TransactionEntity>> getTransactions(String user) {
    return _repository.getTransactions(user);
  }
}
