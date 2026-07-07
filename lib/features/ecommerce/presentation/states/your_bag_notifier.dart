import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xpapp/features/ecommerce/data/data_sources/local_your_bag_data_source.dart';
import 'package:xpapp/features/ecommerce/data/repositories/your_bag_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/get_bag_products_use_case.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/save_your_bag_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/your_bag_state.dart';

final selectedProductProvider = StateProvider<ProductEntity?>((ref) => null);
final selectedSizeProvider = StateProvider<String?>((ref) => null);
final selectedColorProvider = StateProvider<String?>((ref) => null);
final totalAmountProvider = StateProvider<double>((ref) => 0.0);
final yourBagProvider = StateNotifierProvider<YourBagNotifier, YourBagState>(
  (ref) => YourBagNotifier(
    SaveYourBagUseCase(
      YourBagRepositoryImpl(
        LocalYourBagDataSource(SharedPreferences.getInstance()),
      ),
    ),
    GetBagProductsUseCase(
      YourBagRepositoryImpl(
        LocalYourBagDataSource(SharedPreferences.getInstance()),
      ),
    ),
  )..loadBag(),
);

class YourBagNotifier extends StateNotifier<YourBagState> {
  final List<BagProductEntity> _bagProducts = [];
  final SaveYourBagUseCase _saveYourBagUseCase;
  final GetBagProductsUseCase _getBagProductsUseCase;

  YourBagNotifier(this._saveYourBagUseCase, this._getBagProductsUseCase)
    : super(const YourBagState());

  Future<void> addItemToBag(BagProductEntity item, double price) async {
    _bagProducts.add(item);
    final totalPrice = _bagProducts.fold(
      0.0,
      (sum, product) => sum + product.price,
    );
    state = state.copyWith(
      bagProducts: List.from(_bagProducts),
      totalPrice: totalPrice,
    );
  }

  Future<void> removeItemFromBag(BagProductEntity item, double price) async {
    _bagProducts.remove(item);
    final totalPrice = _bagProducts.fold(
      0.0,
      (sum, product) => sum + product.price,
    );
    state = state.copyWith(
      bagProducts: List.from(_bagProducts),
      totalPrice: totalPrice,
    );
  }

  Future<void> saveBag() async {
    await _saveYourBagUseCase(state.bagProducts);
  }

  Future<void> loadBag() async {
    final bagItems = await _getBagProductsUseCase.getBagProducts();
    _bagProducts.addAll(bagItems);
    final totalPrice = _bagProducts.fold(0.0, (sum, item) => sum + item.price);
    state = state.copyWith(
      bagProducts: List.from(_bagProducts),
      totalPrice: totalPrice,
    );
  }

  Future<void> clearBag() async {
    _bagProducts.clear();
    state = state.copyWith(
      bagProducts: List.from(_bagProducts),
      totalPrice: 0.0,
    );
    await _saveYourBagUseCase([]);
  }
}
