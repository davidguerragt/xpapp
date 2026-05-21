import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/bag_item_widget.dart';

class YourBagView extends ConsumerStatefulWidget {
  const YourBagView({super.key});

  @override
  ConsumerState<YourBagView> createState() => _YourBagViewState();
}

class _YourBagViewState extends ConsumerState<YourBagView> {
  final List<Map<String, dynamic>> _items = [
    {
      'title': 'Amazing T-shirt',
      'subtitle': 'Black / M',
      'price': 12.0,
      'qty': 1,
    },
    {
      'title': 'Fabolous Pants',
      'subtitle': 'Blue / 42',
      'price': 15.0,
      'qty': 1,
    },
    {
      'title': 'Spectacular Dress',
      'subtitle': 'Gold / L',
      'price': 20.0,
      'qty': 1,
    },
    {
      'title': 'Stunning Jacket',
      'subtitle': 'Blue / M',
      'price': 18.0,
      'qty': 1,
    },
    {
      'title': 'Wonderful Shoes',
      'subtitle': 'Green / 39',
      'price': 18.0,
      'qty': 1,
    },
  ];

  void _increment(int index) {
    setState(() => _items[index]['qty'] = (_items[index]['qty'] as int) + 1);
  }

  void _decrement(int index) {
    setState(() {
      final current = _items[index]['qty'] as int;
      if (current > 1) _items[index]['qty'] = current - 1;
    });
  }

  double get _total => _items.fold(
    0.0,
    (sum, item) => sum + (item['price'] as double) * (item['qty'] as int),
  );

  @override
  Widget build(BuildContext context) {
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
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: _items.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final item = _items[index];
                return BagItemWidget(
                  title: item['title'] as String,
                  subtitle: item['subtitle'] as String,
                  price: item['price'] as double,
                  quantity: item['qty'] as int,
                  onIncrement: () => _increment(index),
                  onDecrement: () => _decrement(index),
                );
              },
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
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
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
