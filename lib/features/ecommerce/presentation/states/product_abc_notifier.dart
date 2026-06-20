import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/product_save_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/product_abc_state.dart';

class ProductAbcNotifier extends StateNotifier<ProductAbcState> {
  final ProductSaveUseCase _productSaveUseCase;
}
