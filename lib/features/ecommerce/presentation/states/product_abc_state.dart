import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';

part 'product_abc_state.freezed.dart';

@freezed
class ProductAbcState with _$ProductAbcState {
  const factory ProductAbcState.initial() = Initial;
  const factory ProductAbcState.loading() = Loading;
  const factory ProductAbcState.success({
    required List<ProductEntity> products,
  }) = Success;
  const factory ProductAbcState.error({required String message}) = Error;
}
