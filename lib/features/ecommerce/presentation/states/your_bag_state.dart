import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';

class YourBagState {
  final List<BagProductEntity> bagProducts;
  const YourBagState({this.bagProducts = const []});

  Object? get total => 0.0;

  double? get totalPrice => 0.0;

  YourBagState copyWith({
    List<BagProductEntity>? bagProducts,
    required double totalPrice,
  }) {
    return YourBagState(bagProducts: bagProducts ?? this.bagProducts);
  }
}
