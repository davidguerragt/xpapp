import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_response_entity.dart';

part 'payment_process_response_model.freezed.dart';
part 'payment_process_response_model.g.dart';

/// Result returned by the payment gateway for a credit card checkout request.
///
/// Incluye el mensaje que el usuario debe ver en la vista, así como el estado
/// y el identificador de la transacción.
@freezed
abstract class CreditCardPaymentResponseModel
    with _$CreditCardPaymentResponseModel {
  factory CreditCardPaymentResponseModel({
    required bool success,
    required String status,
    required String transactionId,
    @JsonKey(fromJson: _amountFromJson) required double amount,
    required String currency,
    required String cardLast4,
    required String message,
    @JsonKey(fromJson: _dateTimeFromJson) required DateTime timestamp,
  }) = _CreditCardPaymentResponseModel;

  factory CreditCardPaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreditCardPaymentResponseModelFromJson(json);
}

double _amountFromJson(dynamic value) {
  if (value is num) {
    return value.toDouble();
  }
  if (value is String) {
    return double.tryParse(value) ?? 0.0;
  }
  return 0.0;
}

DateTime _dateTimeFromJson(String value) => DateTime.parse(value);

extension CreditCardPaymentResponseModelX on CreditCardPaymentResponseModel {
  PaymentProcessResponseEntity toEntity() {
    return PaymentProcessResponseEntity(
      success: success,
      status: status,
      transactionId: transactionId,
      amount: amount,
      currency: currency,
      cardLast4: cardLast4,
      message: message,
      timestamp: timestamp,
    );
  }
}
