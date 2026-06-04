import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';

class YourBagState {
  final List<BagProductEntity> bagProducts;
  final double totalPrice;

  const YourBagState({this.bagProducts = const [], this.totalPrice = 0.0});

  YourBagState copyWith({
    List<BagProductEntity>? bagProducts,
    double? totalPrice,
  }) {
    return YourBagState(
      bagProducts: bagProducts ?? this.bagProducts,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }
}
