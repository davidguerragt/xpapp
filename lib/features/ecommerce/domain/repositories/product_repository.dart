import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';

abstract class GetProductsRepository {
  Future<List<ProductEntity>> getProductsBySection(int section);
  Future<List<ProductEntity>> getAllProducts();
  Future<void> saveProduct(ProductEntity product);
}
