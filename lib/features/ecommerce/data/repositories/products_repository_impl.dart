import 'package:xpapp/features/ecommerce/data/data_sources/firebase_products_data_source.dart';
import 'package:xpapp/features/ecommerce/data/models/product_model.dart';
//import 'package:xpapp/features/ecommerce/data/data_sources/remote_get_products_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/product_repository.dart';

class ProductsRepositoryImpl extends ProductsRepository {
  //final GetProductsDataSource _productsDataSource;
  final FirebaseProductsDataSource _productsDataSource;

  ProductsRepositoryImpl({FirebaseProductsDataSource? productsDataSource})
    : _productsDataSource = productsDataSource ?? FirebaseProductsDataSource();

  @override
  Future<List<ProductEntity>> getProductsBySection(int section) async {
    final products = await _productsDataSource.getProductsBySection(section);
    return products.map(ProductEntity.fromModel).toList();
  }

  @override
  Future<List<ProductEntity>> getAllProducts() async {
    final products = await _productsDataSource.getAllProducts();
    return products.map(ProductEntity.fromModel).toList();
  }

  @override
  Future<String> saveProduct(ProductEntity product) {
    final ProductModel model = ProductModel.fromEntity(product);
    return _productsDataSource.postProduct(model);
  }
}
