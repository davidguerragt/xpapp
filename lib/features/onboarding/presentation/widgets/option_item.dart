import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  final SubscriptionOption option;

  const OptionItem({required this.option, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Radio(
                value: option.name,
                groupValue: null,
                onChanged: (value) {},
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    option.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '-${((option.discount) * 100).toStringAsFixed(0)}% discount',
                    style: TextStyle(fontSize: 12, color: Colors.indigoAccent),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '€${option.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SubscriptionOption {
  final String name;
  final double price;
  final double discount;

  SubscriptionOption({
    required this.name,
    required this.price,
    required this.discount,
  });
}

abstract class OptionItemData {
  static final options = [
    SubscriptionOption(name: 'Yearly', price: 94.80, discount: 0.66),
    SubscriptionOption(name: 'Monthly', price: 10.90, discount: 0.53),
    SubscriptionOption(name: 'Weekly', price: 5.90, discount: 0.0),
  ];
}
