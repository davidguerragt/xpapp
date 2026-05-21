import 'package:xpapp/features/ecommerce/data/data_sources/remote_get_products_data_source.dart';
import 'package:xpapp/features/ecommerce/data/repositories/get_products_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/product_repository.dart';

class GetProductsUseCase {
  final GetProductsRepository _getProductsRepository;

  GetProductsUseCase(GetProductsRepository? getProductsRepository)
    : _getProductsRepository =
          getProductsRepository ??
          GetProductsRepositoryImpl(GetProductsDataSource());

  Future<List<ProductEntity>> getProductsBySection(int section) async {
    final products = await _getProductsRepository.getProductsBySection(section);
    return products;
  }
}
