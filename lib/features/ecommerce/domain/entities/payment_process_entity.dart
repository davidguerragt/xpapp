import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/credit_card_payment_model.dart';
import 'package:xpapp/features/ecommerce/domain/entities/bag_product_entity.dart';
part 'payment_process_entity.freezed.dart';
part 'payment_process_entity.g.dart';

@freezed
abstract class PaymentProcessEntity with _$PaymentProcessEntity {
  const factory PaymentProcessEntity({
    required String cardNumber,
    required String expiryDate,
    required String cvv,
    required String cardHolderName,
    required double amount,
    required String currency,
    required List<BagProductEntity> bagProducts,
  }) = _PaymentProcessEntity;

  factory PaymentProcessEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentProcessEntityFromJson(json);

  factory PaymentProcessEntity.fromModel(CreditCardPaymentModel model) {
    return PaymentProcessEntity(
      cardNumber: model.cardNumber,
      expiryDate: model.expiryDate,
      cvv: model.cvv,
      cardHolderName: model.cardHolderName,
      amount: model.amount,
      currency: model.currency,
      bagProducts: const [],
    );
  }
}
