import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';

part 'transaction_list_paged_state.freezed.dart';

@freezed
abstract class TransactionListPagedState with _$TransactionListPagedState {
  factory TransactionListPagedState.initial() = _TransactionListPagedInitial;
  factory TransactionListPagedState.loading({
    required List<TransactionEntity> transactions,
  }) = _TransactionListPagedLoading;
  factory TransactionListPagedState.loaded({
    required List<TransactionEntity> transactions,
  }) = _TransactionListPagedLoaded;
  factory TransactionListPagedState.error(String message) =
      _TransactionListPagedError;
}
