import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/transaction_model.dart';

part 'transaction_entity.freezed.dart';

@freezed
abstract class TransactionEntity with _$TransactionEntity {
  factory TransactionEntity({
    required String id,
    required String date,
    required String user,
    required double amount,
    required String holderName,
    required String cardNumber,
  }) = _TransactionEntity;

  factory TransactionEntity.fromModel(TransactionModel model) {
    return TransactionEntity(
      id: model.id,
      date: model.date,
      user: model.user,
      amount: model.amount,
      holderName: model.holderName,
      cardNumber: model.cardNumber,
    );
  }
}
