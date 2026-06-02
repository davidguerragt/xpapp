import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/ecommerce/presentation/states/your_bag_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/widgets/bag_item_widget.dart';

class YourBagView extends ConsumerWidget {
  const YourBagView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your bag',
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => router.goNamed(Routes.ecommerceHome),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 9, child: _BagItemsArea()),
            Expanded(flex: 1, child: _TotalPriceDisplay()),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: _CheckOutButtonSection(),
              ),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _BagItemsArea extends ConsumerWidget {
  const _BagItemsArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bagProducts = ref.watch(yourBagProvider).bagProducts;
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: bagProducts.length,
            itemBuilder: (context, index) {
              final product = bagProducts[index];
              return BagItemWidget(
                title: product.name,
                subtitle: 'Size: ${product.size}, Color: ${product.color}',
                price: product.price,
                quantity: product.quantity,
                image: Image.asset(product.imageUrl),
                onIncrement: () {
                  // Implement increment logic
                },
                onDecrement: () {
                  // Implement decrement logic
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _TotalPriceDisplay extends ConsumerWidget {
  const _TotalPriceDisplay();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalPrice = ref.watch(yourBagProvider.notifier).totalPrice;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Total',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$${totalPrice.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _CheckOutButtonSection extends ConsumerWidget {
  const _CheckOutButtonSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlueBigButton(route: Routes.checkout, buttonText: 'Checkout');
  }
}
