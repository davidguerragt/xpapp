import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_process_response_entity.freezed.dart';
part 'payment_process_response_entity.g.dart';

/// Payment gateway response returned after submitting checkout data.
///
/// Este modelo documenta la respuesta que viene del servicio:
/// - `success`: indica si la transacción fue aprobada o no.
/// - `status`: el estado de la transacción, por ejemplo `approved`.
/// - `transactionId`: identificador único de la transacción.
/// - `amount` y `currency`: valores de la transacción que aceptó el gateway.
/// - `cardLast4`: últimos 4 dígitos de la tarjeta utilizada.
/// - `message`: texto amigable para mostrar al usuario.
/// - `timestamp`: fecha y hora del evento en formato ISO.
@freezed
abstract class PaymentProcessResponseEntity
    with _$PaymentProcessResponseEntity {
  const factory PaymentProcessResponseEntity({
    required bool success,
    required String status,
    required String transactionId,
    @JsonKey(fromJson: _amountFromJson) required double amount,
    required String currency,
    required String cardLast4,
    required String message,
    required DateTime timestamp,
  }) = _PaymentProcessResponseEntity;

  factory PaymentProcessResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentProcessResponseEntityFromJson(json);
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
