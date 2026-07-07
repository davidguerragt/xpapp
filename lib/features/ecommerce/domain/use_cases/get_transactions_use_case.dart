import 'package:xpapp/features/ecommerce/data/repositories/transactions_repository_imp.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/transaction_repository.dart';

class GetTransactionsUseCase {
  final TransactionRepository _repository;

  GetTransactionsUseCase({TransactionRepository? repository})
    : _repository = repository ?? TransactionRepositoryImp();

  Stream<List<TransactionEntity>> getTransactions(String user) {
    return _repository.getTransactions(user);
  }
}
