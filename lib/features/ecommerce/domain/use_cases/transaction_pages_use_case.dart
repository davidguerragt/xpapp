import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/transaction_repository.dart';
import 'package:xpapp/features/ecommerce/data/repositories/transaction_repository_impl.dart';

class TransactionPagesGetUseCase {
  final TransactionRepository repository;

  TransactionPagesGetUseCase({TransactionRepository? repository})
    : repository = repository ?? TransactionRepositoryImpl();

  Future<List<TransactionEntity>> execute(
    String user, {
    int limit = 10,
    String? id,
  }) async {
    return await repository.getTransactionsByPage(user, limit: limit, id: id);
  }
}
