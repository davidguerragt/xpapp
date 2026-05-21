import 'package:shared_preferences/shared_preferences.dart';
import 'package:xpapp/core/navigation/local_storage.dart';
import 'package:xpapp/features/ecommerce/data/models/bag_product_model.dart';

class LocalYourBagDataSource {
  final SharedPreferences _prefs;

  LocalYourBagDataSource({SharedPreferences? sharedPreferences})
    : _prefs = sharedPreferences ?? LocalStorage().prefs;

  Future<void> saveBag(List<BagProductModel> bagProducts) async {
    await Future.delayed(const Duration(seconds: 1));
    await _prefs.setString('bag', bagProducts.toString());
  }

  Future<List<BagProductModel>> getBag() async {
    await Future.delayed(const Duration(seconds: 1));
    final bagString = _prefs.getString('bag');
    if (bagString != null) {
      return bagString
          .split(';')
          .map((item) => item.split(','))
          .map(
            (parts) => BagProductModel(
              id: parts[0],
              name: parts[1],
              imageUrl: parts[2],
              price: double.parse(parts[3]),
              quantity: int.parse(parts[4]),
              size: parts[5],
              color: parts[6],
            ),
          )
          .toList();
    }
    return [];
  }
}
