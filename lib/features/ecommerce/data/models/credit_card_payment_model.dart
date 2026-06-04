import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';

part 'credit_card_payment_model.freezed.dart';
part 'credit_card_payment_model.g.dart';

@freezed
abstract class CreditCardPaymentModel with _$CreditCardPaymentModel {
  factory CreditCardPaymentModel({
    required String cardNumber,
    required String expiryDate,
    required String cvv,
    required String cardHolderName,
    required double amount,
    required String currency,
  }) = _CreditCardPaymentModel;

  factory CreditCardPaymentModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardPaymentModelFromJson(json);

  factory CreditCardPaymentModel.fromEntity(PaymentProcessEntity entity) {
    return CreditCardPaymentModel(
      cardNumber: entity.cardNumber,
      expiryDate: entity.expiryDate,
      cvv: entity.cvv,
      cardHolderName: entity.cardHolderName,
      amount: entity.amount,
      currency: entity.currency,
    );
  }
}
