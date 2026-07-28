import 'package:xpapp/features/administrator/data/repositories/admin_product_repository_impl.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_product_repository.dart';

class AdminProductAddUseCase {
  final AdminProductRepository repository;

  AdminProductAddUseCase({AdminProductRepository? repository})
    : repository = repository ?? AdminProductRepositoryImpl();

  Future<AdminProductEntity> addAdminProduct(AdminProductEntity product) async {
    return await repository.addAdminProduct(product);
  }
}
