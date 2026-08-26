import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/presentation/states/transaction_detail_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/states/transaction_detail_state.dart';

class TransactionDetailView extends ConsumerWidget {
  final String transactionId;

  const TransactionDetailView({super.key, required this.transactionId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Transaction Detail',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => router.goNamed(Routes.ecommerceHome),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: _TransactionDetailBody(transactionId: transactionId),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(16.0),
        child: _BackHomeButtonSection(),
      ),
    );
  }
}

class _TransactionDetailBody extends ConsumerStatefulWidget {
  final String transactionId;

  const _TransactionDetailBody({required this.transactionId});

  @override
  ConsumerState<_TransactionDetailBody> createState() =>
      _TransactionDetailBodyState();
}

class _TransactionDetailBodyState
    extends ConsumerState<_TransactionDetailBody> {
  @override
  void initState() {
    super.initState();
    // Fetch transaction detail when the widget is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(transactionDetailProvider.notifier)
          .getTransactionDetail(widget.transactionId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final transactionDetailState = ref.watch(transactionDetailProvider);

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: transactionDetailState.when(
            initial: () => const Text('Initial State'),
            loading: (transaction) => const CircularProgressIndicator(),
            loaded: (transaction) => SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _TransactionDetailSection(transaction: transaction),
                  SizedBox(height: 8),
                  if (transaction.bagProducts.isNotEmpty)
                    _BagDetailsSection(
                      bagProducts: transaction.bagProducts,
                      totalPrice: transaction.bagProducts.fold<double>(
                        0,
                        (previousValue, product) =>
                            previousValue + product.price,
                      ),
                    ),
                ],
              ),
            ),

            error: (message) => Text('Error: $message'),
          ),
        ),
      ),
    );
  }
}

class _TransactionDetailSection extends StatelessWidget {
  final TransactionEntity transaction;

  const _TransactionDetailSection({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          const BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 16,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transaction ID',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  transaction.id,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          // Removed duplicate lines
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Amount:', style: const TextStyle(fontSize: 16)),
              Text(
                '\$${transaction.amount.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Holder Name:', style: const TextStyle(fontSize: 16)),
              Text(
                transaction.holderName,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Card Number', style: const TextStyle(fontSize: 16)),
              Text(
                transaction.cardNumber.replaceRange(
                  0,
                  transaction.cardNumber.length - 4,
                  '*' * (transaction.cardNumber.length - 4),
                ),
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BagDetailsSection extends ConsumerWidget {
  final List<BagProductEntity> bagProducts;
  final double totalPrice;

  const _BagDetailsSection({
    super.key,
    required this.bagProducts,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          const BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 16,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your Products',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          for (final product in bagProducts) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.name),
                Text('\$${product.price.toStringAsFixed(2)}'),
              ],
            ),
            const SizedBox(height: 8),
          ],
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$${totalPrice.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BackHomeButtonSection extends ConsumerWidget {
  const _BackHomeButtonSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _BlueBigButton(
      buttonText: 'Back to Home',
      onTap: () {
        router.goNamed(Routes.ecommerceHome);
      },
    );
  }
}

class _BlueBigButton extends ConsumerWidget {
  final String buttonText;
  final VoidCallback onTap;

  const _BlueBigButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
