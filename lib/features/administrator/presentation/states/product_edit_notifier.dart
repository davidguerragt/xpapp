import 'package:riverpod/legacy.dart';
import 'product_edit_state.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/domain/use_cases/get_admin_product_use_case.dart';

final productEditNotifierProvider =
    StateNotifierProvider<ProductEditNotifier, AdminProductState>(
      (ref) => ProductEditNotifier(),
    );

class ProductEditNotifier extends StateNotifier<AdminProductState> {
  final GetAdminProductUseCase _getAdminProductsUseCase;

  ProductEditNotifier({GetAdminProductUseCase? getAdminProductsUseCase})
    : _getAdminProductsUseCase =
          getAdminProductsUseCase ?? GetAdminProductUseCase(),
      super(const AdminProductState.initial());

  Future<AdminProductEntity> getProductById(String id) async {
    state = AdminProductState.loading(isLoading: true);
    final product = await _getAdminProductsUseCase.getAdminProductById(id);
    if (product.id == id) {
      state = AdminProductState.loaded(product: product);
      return product;
    } else {
      state = AdminProductState.error(message: 'Product not found');
      throw Exception('Product not found');
    }
  }
}
