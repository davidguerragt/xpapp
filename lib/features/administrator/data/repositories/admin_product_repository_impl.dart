import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_product_repository.dart';
import 'package:xpapp/features/administrator/data/data_sources/firebase_admin_product_data_source.dart';
import 'package:xpapp/features/administrator/data/data_sources/firebase_storage_product_data_source.dart';

class AdminProductRepositoryImpl implements AdminProductRepository {
  final FirebaseAdminProductDataSource _adminProductDataSource;
  final FirebaseStorageProductDataSource _firebaseStorageProductDataSource;

  AdminProductRepositoryImpl({
    FirebaseAdminProductDataSource? adminProductDataSource,
    FirebaseStorageProductDataSource? firebaseStorageProductDataSource,
  }) : _adminProductDataSource =
           adminProductDataSource ?? FirebaseAdminProductDataSource(),
       _firebaseStorageProductDataSource =
           firebaseStorageProductDataSource ??
           FirebaseStorageProductDataSource();

  @override
  Future<List<AdminProductEntity>> getAdminProducts() async {
    final products = await _adminProductDataSource.getAllProducts();
    return products.map(AdminProductEntity.fromModel).toList();
  }

  @override
  Future<AdminProductEntity> getAdminProductById(String id) async {
    final product = await _adminProductDataSource.getProductById(id);
    return AdminProductEntity.fromModel(product);
  }

  @override
  Future<AdminProductEntity> addAdminProduct(AdminProductEntity product) async {
    final productId = await _adminProductDataSource.addProduct(
      product.toModel(),
    );
    var persistedProduct = product.copyWith(id: productId);

    if (product.imageFile != null) {
      final imageUrl = await _firebaseStorageProductDataSource
          .uploadProductImage(productId, product.imageFile!);
      persistedProduct = persistedProduct.copyWith(image: imageUrl);
      await _adminProductDataSource.updateProduct(persistedProduct.toModel());
    }

    return persistedProduct;
  }

  @override
  Future<AdminProductEntity> updateAdminProduct(
    AdminProductEntity product,
  ) async {
    var persistedProduct = product;

    if (product.imageFile != null) {
      final imageUrl = await _firebaseStorageProductDataSource
          .uploadProductImage(product.id, product.imageFile!);
      persistedProduct = product.copyWith(image: imageUrl);
    }

    await _adminProductDataSource.updateProduct(persistedProduct.toModel());
    return persistedProduct;
  }

  @override
  Future<void> deleteAdminProduct(String id) async {
    await _adminProductDataSource.deleteProduct(id);
    await _firebaseStorageProductDataSource.deleteProductImage(id);
  }
}
