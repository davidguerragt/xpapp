import 'package:shared_preferences/shared_preferences.dart';
import 'package:xpapp/features/ecommerce/data/data_sources/local_your_bag_data_source.dart';

class ClearYourBagUseCase {
  final LocalYourBagDataSource _localYourBagDataSource;

  ClearYourBagUseCase({LocalYourBagDataSource? localYourBagDataSource})
    : _localYourBagDataSource =
          localYourBagDataSource ??
          LocalYourBagDataSource(SharedPreferences.getInstance());

  Future<void> execute() async {
    await _localYourBagDataSource.clearBag();
  }
}
