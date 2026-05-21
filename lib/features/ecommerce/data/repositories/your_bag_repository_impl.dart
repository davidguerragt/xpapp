import 'package:xpapp/features/ecommerce/data/data_sources/local_your_bag_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/your_bag_repository.dart';

class YourBagRepositoryImpl implements YourBagRepository {
  final LocalYourBagDataSource _localDataSource;

  YourBagRepositoryImpl({LocalYourBagDataSource? localDataSource})
    : _localDataSource = localDataSource ?? LocalYourBagDataSource();

  @override
  Future<void> saveYourBag(List<BagProductEntity> bag) async {
    _localDataSource.saveBag(bag.map((product) => product.toModel()).toList());
    // Implement the logic to save the bag, e.g., using local storage or an API
  }
}
