import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/presentation/states/item_view_state.dart';

class ItemViewNotifier extends StateNotifier<ItemViewState> {
  final ProductEntity? selectedProduct;
  final String selectedSize;
  final String selectedColor;
  ItemViewNotifier({
    required this.selectedProduct,
    required this.selectedSize,
    required this.selectedColor,
  }) : super(
         ItemViewState(
           product: selectedProduct,
           selectedSize: selectedSize,
           selectedColor: selectedColor,
         ),
       );

  void updateProduct(ProductEntity product) {
    state = state.copyWith(product: product);
  }

  void updateSelectedSize(String size) {
    state = state.copyWith(selectedSize: size);
  }

  void updateSelectedColor(String color) {
    state = state.copyWith(selectedColor: color);
  }
}
