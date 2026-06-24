import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';

abstract class ProductsRepository {
  Future<List<ProductEntity>> getProductsBySection(int section);
  Future<List<ProductEntity>> getAllProducts();
  Future<String> saveProduct(ProductEntity product);
}
