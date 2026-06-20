import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/product_repository.dart';

class ProductSaveUseCase {
  final GetProductsRepository _repository;

  ProductSaveUseCase(this._repository);

  Future<void> call(ProductEntity product) async {
    _repository.saveProduct(product);
  }
}
