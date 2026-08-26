import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/bag_product_model.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
abstract class TransactionModel with _$TransactionModel {
  factory TransactionModel({
    required String id,
    required String date,
    required String user,
    required double amount,
    required String holderName,
    required String cardNumber,
    required List<BagProductModel> bagProducts,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  factory TransactionModel.fromEntity(TransactionEntity e) {
    return TransactionModel(
      id: e.id,
      date: e.date,
      user: e.user,
      amount: e.amount,
      holderName: e.holderName,
      cardNumber: e.cardNumber,
      bagProducts: e.bagProducts
          .map((bagProduct) => BagProductModel.fromEntity(bagProduct))
          .toList(),
    );
  }
}

extension TransactionModelX on TransactionModel {
  Map<String, dynamic> toJsonX() {
    return {
      'id': id,
      'date': date,
      'user': user,
      'amount': amount,
      'holderName': holderName,
      'cardNumber': cardNumber,
      'bagProducts': bagProducts
          .map((bagProduct) => bagProduct.toJson())
          .toList(),
    };
  }
}
