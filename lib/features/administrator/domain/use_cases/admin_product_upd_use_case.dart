import 'package:xpapp/features/administrator/data/repositories/admin_product_repository_impl.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_product_repository.dart';

class AdminProductUpdUseCase {
  final AdminProductRepository repository;

  AdminProductUpdUseCase({AdminProductRepository? repository})
    : repository = repository ?? AdminProductRepositoryImpl();

  Future<AdminProductEntity> updateAdminProduct(
    AdminProductEntity product,
  ) async {
    final updatedProduct = await repository.updateAdminProduct(product);
    return updatedProduct;
  }
}
