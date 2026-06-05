import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_response_entity.dart';

abstract class CreditCardPaymentRepository {
  Future<PaymentProcessResponseEntity> processPayment(
    PaymentProcessEntity paymentEntity,
  );
}
