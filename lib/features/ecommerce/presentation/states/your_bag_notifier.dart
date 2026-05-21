import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/presentation/states/your_bag_state.dart';

class YourBagNotifier extends StateNotifier<YourBagState> {
  YourBagNotifier() : super(const YourBagState());
}
