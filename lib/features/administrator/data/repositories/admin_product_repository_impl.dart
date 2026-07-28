import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_product_repository.dart';
import 'package:xpapp/features/administrator/data/data_sources/firebase_product_admin_data_source.dart';
import 'package:xpapp/features/administrator/data/data_sources/firebase_storage_product_data_source.dart';

class AdminProductRepositoryImpl implements AdminProductRepository {
  final FirebaseProductAdminDataSource _adminProductDataSource;
  final FirebaseStorageProductDataSource _firebaseStorageProductDataSource;

  AdminProductRepositoryImpl({
    FirebaseProductAdminDataSource? adminProductDataSource,
    FirebaseStorageProductDataSource? firebaseStorageProductDataSource,
  }) : _adminProductDataSource =
           adminProductDataSource ?? FirebaseProductAdminDataSource(),
       _firebaseStorageProductDataSource =
           firebaseStorageProductDataSource ??
           FirebaseStorageProductDataSource();

  @override
  Future<List<AdminProductEntity>> getAdminProducts() async {
    final products = await _adminProductDataSource.getAllProducts();
    return Future.wait(
      products.map((product) async {
        if (product.id == products.first.id) {
          final imageFile = await _firebaseStorageProductDataSource
              .downloadProductImage(product.image);
          product = product.copyWith(imageFile: imageFile);
        }
        return AdminProductEntity.fromModel(product);
      }).toList(),
    );
  }

  @override
  Future<AdminProductEntity> getAdminProductById(String id) async {
    var product = await _adminProductDataSource.getProductById(id);
    final imageFile = await _firebaseStorageProductDataSource
        .downloadProductImage(product.image);
    product = product.copyWith(imageFile: imageFile);
    return AdminProductEntity.fromModel(product);
  }

  @override
  Future<void> addAdminProduct(AdminProductEntity product) async {
    final productId = await _adminProductDataSource.addProduct(
      product.toModel(),
    );
    if (product.imageFile != null) {
      await _firebaseStorageProductDataSource.uploadProductImage(
        productId,
        product.imageFile!,
      );
    }
  }

  @override
  Future<void> updateAdminProduct(AdminProductEntity product) async {
    final productId = await _adminProductDataSource.updateProduct(
      product.toModel(),
    );
    if (product.imageFile != null) {
      await _firebaseStorageProductDataSource.uploadProductImage(
        productId,
        product.imageFile!,
      );
    }
  }

  @override
  Future<void> deleteAdminProduct(String id) async {
    await _adminProductDataSource.deleteProduct(id);
    await _firebaseStorageProductDataSource.deleteProductImage(id);
  }
}
