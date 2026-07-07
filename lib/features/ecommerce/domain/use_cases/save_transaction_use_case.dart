import 'package:xpapp/features/ecommerce/data/repositories/transactions_repository_imp.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/transaction_repository.dart';

class SaveTransactionUseCase {
  final TransactionRepository _repository;

  SaveTransactionUseCase({TransactionRepository? repository})
    : _repository = repository ?? TransactionRepositoryImp();

  Future<String> saveTransaction(TransactionEntity transaction) {
    return _repository.saveTransaction(transaction);
  }
}
