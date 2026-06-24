import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/product_save_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/product_abc_state.dart';

final productAbcProvider =
    StateNotifierProvider<ProductAbcNotifier, ProductAbcState>(
      (ref) => ProductAbcNotifier(),
    );

class ProductAbcNotifier extends StateNotifier<ProductAbcState> {
  final ProductSaveUseCase _productSaveUseCase;

  ProductAbcNotifier({ProductSaveUseCase? productSaveUseCase})
    : _productSaveUseCase = productSaveUseCase ?? ProductSaveUseCase(),
      super(ProductAbcState.initial());

  Future<void> saveProduct(ProductEntity product) async {
    state = ProductAbcState.saving(isSaving: true);
    final response = await _productSaveUseCase.call(product);
    if (response != '') {
      state = ProductAbcState.saved(product: product);
    }
  }
}
