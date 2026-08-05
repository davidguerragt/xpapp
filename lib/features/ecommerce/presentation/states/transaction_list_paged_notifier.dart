import 'package:riverpod/legacy.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xpapp/core/consts/api_consts.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/transaction_pages_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/transaction_list_paged_state.dart';

final transactionListPagedProvider =
    StateNotifierProvider.autoDispose<
      TransactionListPagedNotifier,
      TransactionListPagedState
    >((ref) => TransactionListPagedNotifier());

class TransactionListPagedNotifier
    extends StateNotifier<TransactionListPagedState> {
  final TransactionPagesGetUseCase _getTransactionPagesUseCase;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  TransactionListPagedNotifier({
    TransactionPagesGetUseCase? getTransactionPagesUseCase,
  }) : _getTransactionPagesUseCase =
           getTransactionPagesUseCase ?? TransactionPagesGetUseCase(),
       super(TransactionListPagedState.initial()) {
    loadTransactionPages();
  }

  Future<void> loadTransactionPages({String? user, String id = '0'}) async {
    // Obtener el id del usuario logueado desde Firebase si no se proporciona
    final currentUser = _firebaseAuth.currentUser;
    final email = user ?? currentUser?.email;
    if (email == null) {
      state = TransactionListPagedState.error(
        'No user is currently logged in.',
      );
      return;
    }

    final List<TransactionEntity> currentTransactions = id == '0'
        ? []
        : state.when(
            error: (message) => [],
            loaded: (transactionsFuture) => transactionsFuture,
            initial: () => [],
            loading: (transactions) => transactions,
          );
    state = TransactionListPagedState.loading(
      transactions: currentTransactions,
    );

    try {
      final limit = FireStoreCollections.transactionsLimit;
      // state = TransactionListPagedState.loading(transactions: []);
      final transactions = await _getTransactionPagesUseCase.execute(
        email,
        limit: limit,
        id: id.toString(),
      );

      final allTransactions = [...currentTransactions, ...transactions];

      state = TransactionListPagedState.loaded(transactions: allTransactions);
    } catch (e) {
      state = TransactionListPagedState.error(
        'Error fetching transactions: ${e.toString()}',
      );
    }
  }

  Future<void> refreshTransactionListPaged() async {
    final currentUser = _firebaseAuth.currentUser;
    final email = currentUser?.email;
    if (email == null) {
      state = TransactionListPagedState.error(
        'No user is currently logged in.',
      );
      return;
    }
    await loadTransactionPages(user: email);
  }

  Future<void> loadNextPage({required String lastId}) async {
    await loadTransactionPages(id: lastId);
  }
}
