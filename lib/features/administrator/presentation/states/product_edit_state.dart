import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_edit_state.freezed.dart';

@freezed
abstract class AdminProductState with _$AdminProductState {
  const factory AdminProductState.initial() = _Initial;
  const factory AdminProductState.loading({required bool isLoading}) = _Loading;
  const factory AdminProductState.loaded({
    required AdminProductEntity product,
  }) = _Loaded;
  const factory AdminProductState.error({required String message}) = _Error;
}
