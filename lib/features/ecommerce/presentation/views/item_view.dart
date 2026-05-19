import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/ecommerce/presentation/states/home_notifier.dart';

class ECommerceItemView extends ConsumerWidget {
  final String id;
  const ECommerceItemView({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref
        .watch(sectionsProvider)
        .expand((section) => section['products'] as List<Map<String, dynamic>>);
    final product = products.firstWhere((product) => product['id'] == id);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => router.goNamed(Routes.ecommerceHome),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 1, child: _ItemImageSection(product: product)),
            Expanded(flex: 2, child: _ItemDetailsSection(product: product)),
            Padding(
              padding: const EdgeInsets.all(24),
              child: _AddToBagButtonSection(),
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _ItemImageSection extends StatelessWidget {
  final Map<String, dynamic> product;

  const _ItemImageSection({required this.product});

  @override
  Widget build(BuildContext context) {
    return Image.asset(product['image']!);
  }
}

class _ItemDetailsSection extends StatefulWidget {
  final Map<String, dynamic> product;

  const _ItemDetailsSection({required this.product});

  @override
  State<_ItemDetailsSection> createState() => _ItemDetailsSectionState();
}

class _ItemDetailsSectionState extends State<_ItemDetailsSection> {
  late final List<String> sizes;
  late final List<String> colors;
  late String selectedSize;
  late String selectedColor;

  @override
  void initState() {
    super.initState();
    sizes = List<String>.from(widget.product['sizes'] as List<dynamic>);
    colors = List<String>.from(widget.product['colors'] ?? <dynamic>[]);
    selectedSize = sizes.isNotEmpty ? sizes.first : '';
    selectedColor = colors.isNotEmpty ? colors.first : '';
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(bottom: 24)),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 24)),
                  Row(
                    children: [
                      Text(
                        product['title']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Inter',
                          height: 1.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.favorite_border, color: Colors.black),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        product['price']!,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          height: 1.0,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    product['description']!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Inter',
                      height: 1.0,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Size',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Inter',
                  height: 1.0,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: sizes.map((size) {
                  final isSelected = selectedSize == size;
                  return ChoiceChip(
                    label: Text(
                      size.trim(),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isSelected
                            ? Colors.white
                            : Colors.blueAccent.shade700,
                        fontFamily: 'Inter',
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                    selected: isSelected,
                    selectedColor: Colors.blueAccent,
                    backgroundColor: Colors.white,
                    side: BorderSide(
                      color: isSelected
                          ? Colors.blueAccent
                          : Colors.grey.shade300,
                    ),
                    onSelected: (_) {
                      setState(() {
                        selectedSize = size;
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 16),
              Text(
                'Color',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Inter',
                  height: 1.0,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 12,
                children: colors.map((color) {
                  final isSelected = selectedColor == color;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedColor = color;
                      });
                    },
                    child: Tooltip(
                      message: color.trim(),
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: _colorFromName(color),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isSelected
                                ? Colors.blueAccent
                                : Colors.grey.shade300,
                            width: isSelected ? 2 : 1,
                          ),
                        ),
                        child: isSelected
                            ? Icon(
                                Icons.check,
                                size: 18,
                                color:
                                    ThemeData.estimateBrightnessForColor(
                                          _colorFromName(color),
                                        ) ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                              )
                            : null,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AddToBagButtonSection extends StatelessWidget {
  const _AddToBagButtonSection();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //router.goNamed(Routes.personalise);
      },
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            '+ Add to bag',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}

Color _colorFromName(String value) {
  switch (value.toLowerCase().trim()) {
    case 'black':
      return Colors.black;
    case 'white':
      return Colors.white;
    case 'darkgrey':
    case 'dark gray':
      return Colors.grey.shade800;
    case 'lightgrey':
    case 'light gray':
      return Colors.grey.shade300;
    case 'blue':
      return Colors.blue;
    case 'pink':
      return Colors.pink;
    case 'yellow':
      return Colors.yellow;
    case 'green':
      return Colors.green;
    case 'red':
      return Colors.red;
    case 'brown':
      return Colors.brown;
    case 'grey':
    case 'gray':
      return Colors.grey;
    default:
      return Colors.grey.shade400;
  }
}
