import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_edit_state.freezed.dart';

@freezed
abstract class AdminProductState with _$AdminProductState {
  factory AdminProductState.initial() = _Initial;
  factory AdminProductState.loading({required bool isLoading}) = _Loading;
  factory AdminProductState.loaded({required AdminProductEntity product}) =
      _Loaded;
  factory AdminProductState.error({required String message}) = _Error;

  // Saving
  factory AdminProductState.saving({required bool isSaving}) = _Saving;
  factory AdminProductState.saved({required AdminProductEntity product}) =
      _Saved;
}
