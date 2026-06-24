import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';

part 'product_abc_state.freezed.dart';

@freezed
abstract class ProductAbcState with _$ProductAbcState {
  // Initial
  const factory ProductAbcState.initial() = _Initial;

  // Loading
  const factory ProductAbcState.loading({
    required List<ProductEntity> products,
  }) = _Loading;
  const factory ProductAbcState.loaded({
    required List<ProductEntity> products,
  }) = _Loaded;

  // Selecting
  const factory ProductAbcState.selecting({required bool isSelecting}) =
      _IsSelecting;
  const factory ProductAbcState.selected({required ProductEntity product}) =
      _Selected;

  // Saving
  const factory ProductAbcState.saving({required bool isSaving}) = _Saving;
  const factory ProductAbcState.saved({required ProductEntity product}) =
      _Saved;

  // Error
  const factory ProductAbcState.error({required String error}) = _Error;

  // const factory ProductAbcState({
  //   @Default(<ProductEntity>[]) List<ProductEntity> products,
  //   ProductEntity? selectedProduct,
  //   @Default(false) bool isSaving,
  //   String? errorMessage,
  // }) = _ProductAbcState;
}
