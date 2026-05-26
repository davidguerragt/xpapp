import 'package:shared_preferences/shared_preferences.dart';
import 'package:xpapp/features/ecommerce/data/data_sources/local_your_bag_data_source.dart';
import 'package:xpapp/features/ecommerce/data/repositories/your_bag_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/your_bag_repository.dart';

class GetBagProductsUseCase {
  final YourBagRepository _getBagProductsRepository;

  GetBagProductsUseCase(YourBagRepository? getBagProductsRepository)
    : _getBagProductsRepository =
          getBagProductsRepository ??
          YourBagRepositoryImpl(
            LocalYourBagDataSource(SharedPreferences.getInstance()),
          );

  Future<List<BagProductEntity>> getBagProducts() async {
    final bagProducts = await _getBagProductsRepository.getYourBag();
    return bagProducts;
  }
}
