import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionListView extends ConsumerWidget {
  const TransactionListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaction List')),
      body: const SafeArea(child: TransactionListBody()),
    );
  }
}

class TransactionListBody extends StatelessWidget {
  const TransactionListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'Transaction List',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Navigate to the checkout view
            Navigator.pushNamed(context, '/checkout');
          },
          child: const Text('Go to Checkout'),
        ),
      ],
    );
  }
}
