import 'package:xpapp/features/ecommerce/data/repositories/products_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/product_repository.dart';

class ProductSaveUseCase {
  final ProductsRepository _repository;

  ProductSaveUseCase({ProductsRepository? repository})
    : _repository = repository ?? ProductsRepositoryImpl();

  Future<String> call(ProductEntity product) async {
    return await _repository.saveProduct(product);
  }
}
