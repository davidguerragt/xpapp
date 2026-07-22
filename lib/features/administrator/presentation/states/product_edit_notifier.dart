import 'package:riverpod/legacy.dart';
import 'product_edit_state.dart';
import 'package:xpapp/features/administrator/domain/use_cases/get_admin_product_use_case.dart';

final productEditProvider =
    StateNotifierProvider.family<
      ProductEditNotifier,
      AdminProductState,
      String
    >((ref, id) => ProductEditNotifier(id: id));

class ProductEditNotifier extends StateNotifier<AdminProductState> {
  final GetAdminProductUseCase _getAdminProductsUseCase;

  ProductEditNotifier({
    required String id,
    GetAdminProductUseCase? getAdminProductsUseCase,
  }) : _getAdminProductsUseCase =
           getAdminProductsUseCase ?? GetAdminProductUseCase(),
       super(AdminProductState.initial()) {
    getProductById(id);
  }

  Future<void> getProductById(String id) async {
    try {
      state = AdminProductState.loading(isLoading: true);
      final product = await _getAdminProductsUseCase.getAdminProductById(id);
      if (product.id == id) {
        state = AdminProductState.loaded(product: product);
      } else {
        state = AdminProductState.error(message: 'Producto no encontrado');
      }
    } catch (e) {
      state = AdminProductState.error(
        message: 'Error al cargar el producto: ${e.toString()}',
      );
    }
  }
}
