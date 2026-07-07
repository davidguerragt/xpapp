import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';

part 'transaction_list_state.freezed.dart';

@freezed
abstract class TransactionListState with _$TransactionListState {
  factory TransactionListState.initial() = _TransactionListInitial;
  factory TransactionListState.loading({
    required List<TransactionEntity> transactions,
  }) = _TransactionListLoading;
  factory TransactionListState.loaded({
    required Stream<List<TransactionEntity>> transactions,
  }) = _TransactionListLoaded;
  factory TransactionListState.error(String message) = _TransactionListError;
}
