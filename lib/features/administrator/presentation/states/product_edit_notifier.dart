import 'package:image_picker/image_picker.dart';
import 'package:riverpod/legacy.dart';
import 'package:xpapp/features/administrator/domain/use_cases/admin_product_add_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/admin_product_del_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/admin_product_upd_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/admin_product_get_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/pick_image_use_case.dart';
import 'product_edit_state.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';

final productEditProvider =
    StateNotifierProvider.family<
      ProductEditNotifier,
      AdminProductState,
      String
    >((ref, id) => ProductEditNotifier(id: id));

class ProductEditNotifier extends StateNotifier<AdminProductState> {
  final AdminProductGetUseCase _getAdminProductsUseCase;
  final AdminProductUpdUseCase _updAdminProductUseCase;
  final AdminProductAddUseCase _addAdminProductUseCase;
  final AdminProductDelUseCase _delAdminProductUseCase;
  final PickImageUseCase _pickImageUseCase;

  ProductEditNotifier({
    required String id,
    AdminProductGetUseCase? getAdminProductsUseCase,
    AdminProductUpdUseCase? updateAdminProductUseCase,
    AdminProductAddUseCase? saveAdminProductUseCase,
    AdminProductDelUseCase? deleteAdminProductUseCase,
    PickImageUseCase? pickImageUseCase,
  }) : _getAdminProductsUseCase =
           getAdminProductsUseCase ?? AdminProductGetUseCase(),
       _updAdminProductUseCase =
           updateAdminProductUseCase ?? AdminProductUpdUseCase(),
       _addAdminProductUseCase =
           saveAdminProductUseCase ?? AdminProductAddUseCase(),
       _delAdminProductUseCase =
           deleteAdminProductUseCase ?? AdminProductDelUseCase(),
       _pickImageUseCase = pickImageUseCase ?? PickImageUseCase(),
       super(AdminProductState.initial()) {
    if (id.trim().isNotEmpty && id != 'new') {
      getProductById(id);
    }
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

  Future<void> addProduct(AdminProductEntity product) async {
    try {
      state = AdminProductState.saving(isSaving: true);
      final createdProduct = await _addAdminProductUseCase.addAdminProduct(
        product,
      );
      state = AdminProductState.saved(product: createdProduct);
    } catch (e) {
      state = AdminProductState.error(
        message: 'Error al guardar el producto: ${e.toString()}',
      );
    }
  }

  Future<void> updateProduct(AdminProductEntity product) async {
    try {
      state = AdminProductState.saving(isSaving: true);
      final updatedProduct = await _updAdminProductUseCase.updateAdminProduct(
        product,
      );
      state = AdminProductState.saved(product: updatedProduct);
    } catch (e) {
      state = AdminProductState.error(
        message: 'Error al actualizar el producto: ${e.toString()}',
      );
    }
  }

  Future<void> deleteProduct(AdminProductEntity product) async {
    try {
      state = AdminProductState.deleting(isDeleting: true);
      await _delAdminProductUseCase.deleteAdminProduct(product);
      state = AdminProductState.deleted();
    } catch (e) {
      state = AdminProductState.error(
        message: 'Error al eliminar el producto: ${e.toString()}',
      );
    }
  }

  Future<XFile?> pickImage() async {
    try {
      final pickedFile = await _pickImageUseCase.call();
      if (pickedFile != null) {
        return pickedFile;
      } else {
        return null;
      }
    } catch (e) {
      state = AdminProductState.error(
        message: 'Error al seleccionar la imagen: ${e.toString()}',
      );
      return null;
    }
  }

  Future<XFile?> captureImage() async {
    try {
      final capturedFile = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
      if (capturedFile != null) {
        return capturedFile;
      } else {
        return null;
      }
    } catch (e) {
      state = AdminProductState.error(
        message: 'Error al capturar la imagen: ${e.toString()}',
      );
      return null;
    }
  }
}
