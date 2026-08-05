import 'package:xpapp/features/ecommerce/data/repositories/transaction_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/transaction_repository.dart';

class TransactionSaveUseCase {
  final TransactionRepository _repository;

  TransactionSaveUseCase({TransactionRepository? repository})
    : _repository = repository ?? TransactionRepositoryImpl();

  Future<String> saveTransaction(TransactionEntity transaction) {
    return _repository.saveTransaction(transaction);
  }
}
