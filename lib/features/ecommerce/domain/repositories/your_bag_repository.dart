import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';

abstract class YourBagRepository {
  Future<void> saveYourBag(List<BagProductEntity> bag);
  Future<List<BagProductEntity>> getYourBag();
}
