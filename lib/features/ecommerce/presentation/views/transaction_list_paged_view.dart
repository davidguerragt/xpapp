import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/presentation/states/transaction_list_paged_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/states/transaction_list_paged_state.dart';
import 'package:xpapp/features/login/presentation/states/login_notifier.dart';
import 'package:xpapp/features/login/presentation/states/login_state.dart';

class TransactionListPagedView extends ConsumerWidget {
  const TransactionListPagedView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Transaction List',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const SafeArea(child: TransactionListPagedBody()),
    );
  }
}

class TransactionListPagedBody extends ConsumerStatefulWidget {
  const TransactionListPagedBody({super.key});

  @override
  ConsumerState<TransactionListPagedBody> createState() =>
      _TransactionListPagedBodyState();
}

class _TransactionListPagedBodyState
    extends ConsumerState<TransactionListPagedBody> {
  bool _hasRequestedLoadAfterLogin = false;

  @override
  void initState() {
    super.initState();
    // Verificar el estado de login cuando se carga la vista
    ref.read(loginProvider.notifier).isLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginProvider);

    // Verificar si está logueado basado en el estado
    final isLoggedIn =
        loginState is LoginSuccessState ||
        loginState is LoginAdminState ||
        (loginState is LoginLoggedInState && loginState.isLoggedIn);

    if (isLoggedIn && !_hasRequestedLoadAfterLogin) {
      _hasRequestedLoadAfterLogin = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(transactionListPagedProvider.notifier)
            .refreshTransactionListPaged();
      });
    }

    if (isLoggedIn) {
      return Column(
        children: [
          const SizedBox(height: 20),
          const TransactionListPagedArea(),
          InkWell(
            onTap: () {
              router.goNamed(Routes.ecommerceHome);
            },
            child: Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Center(
                child: Text(
                  'Back to Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Please log in to view your transactions',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => router.goNamed(Routes.login),
            child: const Text('Go to Login'),
          ),
        ],
      ),
    );
  }
}

class TransactionListPagedArea extends ConsumerWidget {
  const TransactionListPagedArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ref
          .watch(transactionListPagedProvider)
          .when(
            initial: () => const Center(child: Text('No transactions loaded.')),
            loading: (List<TransactionEntity> transactions) {
              return const Center(child: CircularProgressIndicator());
            },
            loaded: (List<TransactionEntity> transactions) {
              if (transactions.isEmpty) {
                return RefreshIndicator(
                  onRefresh: () async {
                    ref
                        .read(transactionListPagedProvider.notifier)
                        .refreshTransactionListPaged();
                  },
                  child: ListView(
                    children: const [
                      SizedBox(height: 160),
                      Center(child: Text('No transactions found.')),
                    ],
                  ),
                );
              }

              final lastId = transactions.last.id;

              return RefreshIndicator(
                onRefresh: () async {
                  ref
                      .read(transactionListPagedProvider.notifier)
                      .refreshTransactionListPaged();
                },
                child: ListView.builder(
                  itemCount: transactions.length + 1,
                  itemBuilder: (context, index) {
                    if (index == transactions.length) {
                      return NextPageButton(
                        onPressed: () {
                          ref
                              .read(transactionListPagedProvider.notifier)
                              .loadNextPage(lastId: lastId);
                        },
                      );
                    }

                    final transaction = transactions[index];
                    return TransactionListPagedItem(
                      transactionId: transaction.id,
                      date: transaction.date,
                      user: transaction.user,
                      amount: transaction.amount,
                      holderName: transaction.holderName,
                      cardNumber: transaction.cardNumber,
                    );
                  },
                ),
              );
            },
            error: (String message) {
              return Center(child: Text('Error: $message'));
            },
          ),
    );
  }
}

class NextPageButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NextPageButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Text('Next Page'));
  }
}

class TransactionListPagedItem extends StatelessWidget {
  final String transactionId;
  final String date;
  final String user;
  final double amount;
  final String holderName;
  final String cardNumber;

  const TransactionListPagedItem({
    super.key,
    required this.transactionId,
    required this.date,
    required this.user,
    required this.amount,
    required this.holderName,
    required this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigoAccent, width: 2.0),
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Transaction ID: $transactionId',
          style: TextStyle(color: Colors.black),
        ),
      ),
      subtitle: Container(
        margin: const EdgeInsets.only(top: 8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigoAccent, width: 2.0),
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Date: $date\nUser: $user\nAmount: \$${amount.toStringAsFixed(2)}\nHolder Name: $holderName\nCard Number: **** **** **** ${cardNumber.substring(cardNumber.length - 4)}',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
