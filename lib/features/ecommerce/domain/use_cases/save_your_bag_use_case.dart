import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/your_bag_repository.dart';

class SaveYourBagUseCase {
  final YourBagRepository _repository;

  SaveYourBagUseCase(this._repository);

  Future<void> call(List<BagProductEntity> bag) async {
    await _repository.saveYourBag(bag);
  }
}
