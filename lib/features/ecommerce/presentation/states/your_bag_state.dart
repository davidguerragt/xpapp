import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';

class YourBagState {
  final List<BagProductEntity> bagProducts;
  const YourBagState({this.bagProducts = const []});

  YourBagState copyWith({
    List<BagProductEntity>? bagProducts,
    required List<dynamic> bagItems,
    required double totalPrice,
  }) {
    return YourBagState(bagProducts: bagProducts ?? this.bagProducts);
  }
}
