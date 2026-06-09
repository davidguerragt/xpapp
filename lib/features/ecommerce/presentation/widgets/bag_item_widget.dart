import 'package:flutter/material.dart';
import 'package:xpapp/core/navigation/router.dart';

class BagItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final double price;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final Widget? image;

  const BagItemWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image
              Container(
                width: 90,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child:
                      image ??
                      const Icon(Icons.image, color: Colors.blueGrey, size: 36),
                ),
              ),
              const SizedBox(width: 12),
              // Item data
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Subtitle
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Quantity buttons
                    Row(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: onDecrement,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: const Icon(
                                  Icons.remove,
                                  size: 18,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey.shade200),
                              ),
                              child: Text(
                                quantity.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: onIncrement,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  size: 18,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                          ],
                        ),
                        // Price
                        Text(
                          '\$ ${price.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Divider
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Divider(
            color: Colors.grey, // Color de la línea
            thickness: 1.0, // Grosor de la línea
            indent: 5, // Margen desde el lado izquierdo
            endIndent: 5, // Margen desde el lado derecho
          ),
        ),
      ],
    );
  }
}
