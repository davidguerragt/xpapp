import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_product_repository.dart';
import 'package:xpapp/features/administrator/data/data_sources/firebase_product_admin_data_source.dart';

class AdminProductRepositoryImpl implements AdminProductRepository {
  final FirebaseProductAdminDataSource _adminProductDataSource;

  AdminProductRepositoryImpl({
    FirebaseProductAdminDataSource? adminProductDataSource,
  }) : _adminProductDataSource =
           adminProductDataSource ?? FirebaseProductAdminDataSource();

  @override
  Future<List<AdminProductEntity>> getAdminProducts() async {
    final products = await _adminProductDataSource.getAllProducts();
    return products
        .map((product) => AdminProductEntity.fromModel(product))
        .toList();
  }

  @override
  Future<AdminProductEntity> getAdminProductById(String id) async {
    final product = await _adminProductDataSource.getProductById(id);
    return AdminProductEntity.fromModel(product);
  }

  @override
  Future<void> addAdminProduct(AdminProductEntity product) async {
    await _adminProductDataSource.addProduct(product.toModel());
  }

  @override
  Future<void> updateAdminProduct(AdminProductEntity product) async {
    await _adminProductDataSource.updateProduct(product.toModel());
  }

  @override
  Future<void> deleteAdminProduct(String id) async {
    await _adminProductDataSource.deleteProduct(id);
  }
}
