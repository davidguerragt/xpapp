import 'package:xpapp/features/administrator/data/repositories/admin_product_repository_impl.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_product_repository.dart';

class GetAdminProductUseCase {
  final AdminProductRepository repository;

  GetAdminProductUseCase({AdminProductRepository? repository})
    : repository = repository ?? AdminProductRepositoryImpl();

  Future<AdminProductEntity> getAdminProductById(String id) async {
    return repository.getAdminProductById(id);
  }
}
