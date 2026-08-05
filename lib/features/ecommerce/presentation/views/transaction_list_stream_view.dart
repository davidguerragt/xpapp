import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/presentation/states/transaction_list_stream_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/states/transaction_list_stream_state.dart';
import 'package:xpapp/features/login/presentation/states/login_notifier.dart';
import 'package:xpapp/features/login/presentation/states/login_state.dart';

class TransactionListStreamView extends ConsumerWidget {
  const TransactionListStreamView({super.key});

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
      body: const SafeArea(child: TransactionListStreamBody()),
    );
  }
}

class TransactionListStreamBody extends ConsumerStatefulWidget {
  const TransactionListStreamBody({super.key});

  @override
  ConsumerState<TransactionListStreamBody> createState() =>
      _TransactionListStreamBodyState();
}

class _TransactionListStreamBodyState
    extends ConsumerState<TransactionListStreamBody> {
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

    if (isLoggedIn) {
      return Column(
        children: [
          const SizedBox(height: 20),
          const TransactionListStreamArea(),
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

class TransactionListStreamArea extends ConsumerWidget {
  const TransactionListStreamArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ref
          .watch(transactionListProvider)
          .when(
            initial: () => const Center(child: Text('No transactions found.')),
            loading: (transactions) =>
                const Center(child: CircularProgressIndicator()),
            error: (message) =>
                Center(child: Text('Error fetching transactions: $message')),
            loaded: (transactions) {
              return StreamBuilder<List<TransactionEntity>>(
                stream: transactions,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Error fetching transactions: ${snapshot.error}',
                      ),
                    );
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(
                      child: Text(
                        'No transactions found.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  } else {
                    final transactionList = snapshot.data!;
                    return Column(
                      children: [
                        Text(
                          'Total Transactions: ${transactionList.length}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: transactionList.length,
                            itemBuilder: (context, index) {
                              final transaction = transactionList[index];
                              return TransactionListStreamItem(
                                transactionId: transaction.id,
                                date: transaction.date,
                                user: transaction.user,
                                amount: transaction.amount,
                                holderName: transaction.holderName,
                                cardNumber: transaction.cardNumber,
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  }
                },
              );
            },
          ),
    );
  }
}

class TransactionListStreamItem extends StatelessWidget {
  final String transactionId;
  final String date;
  final String user;
  final double amount;
  final String holderName;
  final String cardNumber;

  const TransactionListStreamItem({
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
