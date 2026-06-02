import 'package:xpapp/features/ecommerce/data/models/payment_method_model.dart';

class PaymentMethodEntity {
  final String id;
  final String cardHolderName;
  final String cardNumber;
  final String expirationDate;
  final String cardBrand;

  const PaymentMethodEntity({
    required this.id,
    required this.cardHolderName,
    required this.cardNumber,
    required this.expirationDate,
    required this.cardBrand,
  });

  factory PaymentMethodEntity.fromModel(PaymentMethodModel model) {
    return PaymentMethodEntity(
      id: model.id,
      cardHolderName: model.cardHolderName,
      cardNumber: model.cardNumber,
      expirationDate: model.expirationDate,
      cardBrand: model.cardBrand,
    );
  }

  PaymentMethodModel toModel() {
    return PaymentMethodModel(
      id: id,
      cardHolderName: cardHolderName,
      cardNumber: cardNumber,
      expirationDate: expirationDate,
      cardBrand: cardBrand,
    );
  }

  String get maskedNumber {
    final cleaned = cardNumber.replaceAll(' ', '');
    if (cleaned.length >= 4) {
      return '**** **** **** ${cleaned.substring(cleaned.length - 4)}';
    }
    return '**** **** **** ${cleaned.padLeft(4, '*')}';
  }
}
