import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/transaction_model.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';

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
    required List<BagProductEntity> bagProducts,
  }) = _TransactionEntity;

  factory TransactionEntity.fromModel(TransactionModel model) {
    return TransactionEntity(
      id: model.id,
      date: model.date,
      user: model.user,
      amount: model.amount,
      holderName: model.holderName,
      cardNumber: model.cardNumber,
      bagProducts: model.bagProducts
          .map((bagProduct) => BagProductEntity.fromModel(bagProduct))
          .toList(),
    );
  }

  static TransactionEntity empty() {
    return TransactionEntity(
      id: '',
      date: '',
      user: '',
      amount: 0.0,
      holderName: '',
      cardNumber: '',
      bagProducts: [],
    );
  }
}
