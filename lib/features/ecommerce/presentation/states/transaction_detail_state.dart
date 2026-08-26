import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';

part 'transaction_detail_state.freezed.dart';

@freezed
abstract class TransactionDetailState with _$TransactionDetailState {
  factory TransactionDetailState.initial() = _TransactionDetailInitial;
  factory TransactionDetailState.loading({
    required TransactionEntity transaction,
  }) = _TransactionDetailLoading;
  factory TransactionDetailState.loaded({
    required TransactionEntity transaction,
  }) = _TransactionDetailLoaded;
  factory TransactionDetailState.error(String message) =
      _TransactionDetailError;
}
