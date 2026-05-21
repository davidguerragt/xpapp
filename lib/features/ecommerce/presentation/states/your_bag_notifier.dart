import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/save_your_bag_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/your_bag_state.dart';

class YourBagNotifier extends StateNotifier<YourBagState> {
  //final YourBagState _initialState = const YourBagState();
  final List<BagProductEntity> _bagItems = [];
  double totalPrice = 0.0;
  final SaveYourBagUseCase _saveYourBagUseCase;

  YourBagNotifier({required SaveYourBagUseCase saveYourBagUseCase})
    : _saveYourBagUseCase = saveYourBagUseCase,
      super(const YourBagState());

  Future<void> addItemToBag(BagProductEntity item, double price) async {
    _bagItems.add(item);
    totalPrice += price;
    state = state.copyWith(
      bagItems: List.from(_bagItems),
      totalPrice: totalPrice,
    );
  }

  Future<void> removeItemFromBag(BagProductEntity item, double price) async {
    _bagItems.remove(item);
    totalPrice -= price;
    state = state.copyWith(
      bagItems: List.from(_bagItems),
      totalPrice: totalPrice,
    );
  }

  Future<void> saveBag() async {
    await _saveYourBagUseCase(_bagItems);
  }
}
