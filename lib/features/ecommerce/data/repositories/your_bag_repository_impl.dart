import 'package:xpapp/features/ecommerce/data/data_sources/local_your_bag_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/your_bag_repository.dart';

class YourBagRepositoryImpl implements YourBagRepository {
  final LocalYourBagDataSource _localDataSource;

  YourBagRepositoryImpl(
    LocalYourBagDataSource localYourBagDataSource, {
    LocalYourBagDataSource? localDataSource,
  }) : _localDataSource = localDataSource ?? localYourBagDataSource;

  @override
  Future<void> saveYourBag(List<BagProductEntity> bag) async {
    await _localDataSource.saveBag(
      bag.map((product) => product.toModel()).toList(),
    );
    // Implement the logic to save the bag, e.g., using local storage or an API
  }

  @override
  Future<void> clearYourBag() async {
    await _localDataSource.clearBag();
  }

  @override
  Future<List<BagProductEntity>> getYourBag() async {
    final bagModels = await _localDataSource.getBag();
    return bagModels.map(BagProductEntity.fromModel).toList();
    // Implement the logic to retrieve the bag, e.g., from local storage or an API
  }
}
