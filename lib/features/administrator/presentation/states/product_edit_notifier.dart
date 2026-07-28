import 'package:riverpod/legacy.dart';
import 'product_edit_state.dart';
import 'package:xpapp/features/administrator/domain/use_cases/get_admin_product_use_case.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';

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

  Future<void> saveProduct(AdminProductEntity product) async {
    try {
      state = AdminProductState.saving(isSaving: true);
      // Here you would call a use case to save the product
      // For example: await _saveAdminProductUseCase.saveProduct(product);
      state = AdminProductState.saved(product: product);
    } catch (e) {
      state = AdminProductState.error(
        message: 'Error al guardar el producto: ${e.toString()}',
      );
    }
  }

  Future<void> deleteProduct(String id) async {
    try {
      state = AdminProductState.deleting(isDeleting: true);
      // Here you would call a use case to delete the product
      // For example: await _deleteAdminProductUseCase.deleteProduct(id);
      state = AdminProductState.deleted();
    } catch (e) {
      state = AdminProductState.error(
        message: 'Error al eliminar el producto: ${e.toString()}',
      );
    }
  }
}
