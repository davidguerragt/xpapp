import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';

abstract class CreditCardPaymentRepository {
  Future<void> processPayment(PaymentProcessEntity paymentEntity);
}
