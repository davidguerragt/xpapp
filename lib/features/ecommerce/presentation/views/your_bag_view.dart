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
      body: SafeArea(child: BagItemsArea()),
    );
  }
}

class BagItemsArea extends ConsumerWidget {
  const BagItemsArea({super.key});

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
        BlueBigButton(route: Routes.checkout, buttonText: 'Checkout'),
      ],
    );
  }
}
