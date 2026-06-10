import 'package:xpapp/features/ecommerce/data/data_sources/firebase_get_products_data_source.dart';
//import 'package:xpapp/features/ecommerce/data/data_sources/remote_get_products_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/product_repository.dart';

class GetProductsRepositoryImpl extends GetProductsRepository {
  //final GetProductsDataSource _productsDataSource;
  final FirebaseGetProductsDataSource _productsDataSource;

  GetProductsRepositoryImpl({FirebaseGetProductsDataSource? productsDataSource})
    : _productsDataSource =
          productsDataSource ?? FirebaseGetProductsDataSource();

  @override
  Future<List<ProductEntity>> getProductsBySection(int section) async {
    //final products = await _productsDataSource.getProductsBySection(section);
    final products = await _productsDataSource.getProducts();
    return products.map(ProductEntity.fromModel).toList();
  }
}
