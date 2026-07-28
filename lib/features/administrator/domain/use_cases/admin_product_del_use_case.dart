import 'package:xpapp/features/administrator/data/repositories/admin_product_repository_impl.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_product_repository.dart';

class AdminProductDelUseCase {
  final AdminProductRepository repository;

  AdminProductDelUseCase({AdminProductRepository? repository})
    : repository = repository ?? AdminProductRepositoryImpl();

  Future<void> deleteAdminProduct(AdminProductEntity product) async {
    await repository.deleteAdminProduct(product.id);
  }
}
