//import 'package:xpapp/features/ecommerce/data/data_sources/remote_get_products_data_source.dart';
import 'package:xpapp/features/ecommerce/data/repositories/products_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/product_repository.dart';

class GetProductsUseCase {
  final ProductsRepository _getProductsRepository;

  GetProductsUseCase(ProductsRepository? getProductsRepository)
    : _getProductsRepository =
          getProductsRepository ?? ProductsRepositoryImpl();

  Future<List<ProductEntity>> getProductsBySection(int section) async {
    final products = await _getProductsRepository.getProductsBySection(section);
    return products;
  }

  Future<List<ProductEntity>> getAllProducts() async {
    final products = await _getProductsRepository.getAllProducts();
    return products;
  }
}
