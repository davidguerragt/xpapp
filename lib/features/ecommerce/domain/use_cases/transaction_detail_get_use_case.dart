import 'package:xpapp/features/ecommerce/domain/repositories/transaction_repository.dart';
import 'package:xpapp/features/ecommerce/data/repositories/transaction_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';

class TransactionDetailGetUseCase {
  final TransactionRepository _repository;

  TransactionDetailGetUseCase({TransactionRepository? repository})
    : _repository = repository ?? TransactionRepositoryImpl();

  Future<TransactionEntity?> execute(String transactionId) {
    return _repository.getTransactionById(transactionId);
  }
}
