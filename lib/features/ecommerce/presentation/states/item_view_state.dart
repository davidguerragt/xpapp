import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';

class ItemViewState {
  final ProductEntity product;
  final int quantity;
  final String size;
  final String color;
  const ItemViewState({
    required this.product,
    this.quantity = 1,
    this.size = '',
    this.color = '',
  });

  ItemViewState copyWith({
    ProductEntity? product,
    int? quantity,
    String? size,
    String? color,
  }) {
    return ItemViewState(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      size: size ?? this.size,
      color: color ?? this.color,
    );
  }
}


// import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';

// class YourBagState {
//   final List<BagProductEntity> bagProducts;
//   const YourBagState({this.bagProducts = const []});

//   YourBagState copyWith({
//     List<BagProductEntity>? bagProducts,
//     required double totalPrice,
//   }) {
//     return YourBagState(bagProducts: bagProducts ?? this.bagProducts);
//   }
// }