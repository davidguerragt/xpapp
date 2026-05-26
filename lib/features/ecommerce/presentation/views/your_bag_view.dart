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
        const Divider(height: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Text(
                '€ ${_total.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Checkout'),
          ),
        ),
      ],
    );
  }
}

// class _YourBagViewState extends ConsumerState<YourBagView> {
//   // final List<Map<String, dynamic>> _items;

//   // void _increment(int index) {
//   //   setState(() => _items[index]['qty'] = (_items[index]['qty'] as int) + 1);
//   // }

//   // void _decrement(int index) {
//   //   setState(() {
//   //     final current = _items[index]['qty'] as int;
//   //     if (current > 1) _items[index]['qty'] = current - 1;
//   //   });
//   // }

//   // double get _total => _items.fold(
//   //   0.0,
//   //   (sum, item) => sum + (item['price'] as double) * (item['qty'] as int),
//   // );

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final items = ref.watch(yourBagProvider).bagProducts;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Your bag',
//           style: const TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () => router.goNamed(Routes.ecommerceHome),
//           icon: const Icon(
//             Icons.arrow_back_ios_new_outlined,
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.separated(
//               itemCount: items.length,
//               separatorBuilder: (_, __) => const Divider(height: 1),
//               itemBuilder: (context, index) {
//                 final item = items[index];
//                 return BagItemWidget(
//                   title: item.title,
//                   subtitle: item.subtitle,
//                   price: item.price,
//                   quantity: item.quantity,
//                   subtitle: item.subtitle,
//                   price: item.price,
//                   quantity: item.quantity,
//                   onIncrement: () => _increment(index),
//                   onDecrement: () => _decrement(index),
//                 );
//               },
//             ),
//           ),
//           const Divider(height: 1),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 16.0,
//               vertical: 12.0,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Total',
//                   style: TextStyle(color: Colors.grey, fontSize: 16),
//                 ),
//                 Text(
//                   '€ ${_total.toStringAsFixed(2)}',
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 16.0,
//               vertical: 12.0,
//             ),
//             child: SizedBox(
//               width: double.infinity,
//               height: 48,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   backgroundColor: Colors.blue,
//                 ),
//                 child: const Text(
//                   'Checkout',
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
