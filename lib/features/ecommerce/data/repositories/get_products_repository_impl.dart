import 'package:xpapp/features/ecommerce/data/data_sources/get_products_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/product_repository.dart';

class GetProductsRepositoryImpl extends GetProductsRepository {
  final GetProductsDataSource _productsDataSource;

  GetProductsRepositoryImpl(this._productsDataSource);

  @override
  Future<List<ProductEntity>> getProductsBySection(int section) async {
    final products = await _productsDataSource.getProductsBySection(section);
    return products.map(ProductEntity.fromModel).toList();
  }
}
