import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';

abstract class AdminProductRepository {
  Future<List<AdminProductEntity>> getAdminProducts();
  Future<AdminProductEntity> getAdminProductById(String id);
  Future<void> addAdminProduct(AdminProductEntity product);
  Future<void> updateAdminProduct(AdminProductEntity product);
  Future<void> deleteAdminProduct(String id);
}
