import 'package:riverpod/legacy.dart';
import 'transaction_detail_state.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/transaction_detail_get_use_case.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';

final transactionDetailProvider =
    StateNotifierProvider.autoDispose<
      TransactionDetailNotifier,
      TransactionDetailState
    >((ref) => TransactionDetailNotifier());

class TransactionDetailNotifier extends StateNotifier<TransactionDetailState> {
  final TransactionDetailGetUseCase _getTransactionDetailUseCase;

  TransactionDetailNotifier({
    TransactionDetailGetUseCase? getTransactionDetailUseCase,
  }) : _getTransactionDetailUseCase =
           getTransactionDetailUseCase ?? TransactionDetailGetUseCase(),
       super(TransactionDetailState.initial());

  Future<void> getTransactionDetail(String transactionId) async {
    state = TransactionDetailState.loading(
      transaction:
          state.maybeWhen(
            loaded: (transaction) => transaction,
            orElse: () => null,
          ) ??
          TransactionEntity.empty(),
    );
    final transaction = await _getTransactionDetailUseCase.execute(
      transactionId,
    );
    if (transaction == null) {
      state = TransactionDetailState.error('Transaction not found');
      return;
    }
    state = TransactionDetailState.loaded(transaction: transaction);
  }
}
