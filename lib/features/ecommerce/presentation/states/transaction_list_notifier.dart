import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/get_transactions_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/transaction_list_state.dart';

final transactionListProvider =
    StateNotifierProvider<TransactionListNotifier, TransactionListState>(
      (ref) => TransactionListNotifier(),
    );

class TransactionListNotifier extends StateNotifier<TransactionListState> {
  final GetTransactionsUseCase _getTransactionsUseCase;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  TransactionListNotifier({GetTransactionsUseCase? getTransactionsUseCase})
    : _getTransactionsUseCase =
          getTransactionsUseCase ?? GetTransactionsUseCase(),
      super(TransactionListState.initial()) {
    _initializeTransactions();
  }

  void _initializeTransactions() {
    // Obtener el id del usuario logueado desde Firebase
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) {
      state = TransactionListState.error('No user is currently logged in.');
      return;
    }
    initSubscription(currentUser.email ?? '');
  }

  StreamSubscription? _subscription;

  Future<void> initSubscription(String user) async {
    // Cancel any existing subscription
    //await _subscription?.cancel();

    state = TransactionListState.loading(transactions: []);

    // Start a new subscription
    try {
      _subscription = _getTransactionsUseCase
          .getTransactions(user)
          .listen(
            (transactions) {
              state = TransactionListState.loaded(
                transactions: _getTransactionsUseCase.getTransactions(user),
              );
            },
            onError: (error) {
              state = TransactionListState.error(
                'Error fetching transactions: ${error.toString()}',
              );
            },
          );
    } catch (e) {
      state = TransactionListState.error(
        'Error initializing transaction subscription: ${e.toString()}',
      );
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
