import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';

class ItemViewState {
  final ProductEntity? product;
  final String selectedSize;
  final String selectedColor;
  const ItemViewState({
    required this.product,
    required this.selectedSize,
    required this.selectedColor,
  });

  ItemViewState copyWith({
    ProductEntity? product,
    String? selectedSize,
    String? selectedColor,
  }) {
    return ItemViewState(
      product: product ?? this.product,
      selectedSize: selectedSize ?? this.selectedSize,
      selectedColor: selectedColor ?? this.selectedColor,
    );
  }
}
