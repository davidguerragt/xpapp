import 'package:xpapp/features/ecommerce/data/repositories/credit_card_payment_repository_imp.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_response_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/credit_card_paymemt_repository.dart';

class CheckoutPaymentUseCase {
  final CreditCardPaymentRepository _repository;

  CheckoutPaymentUseCase({CreditCardPaymentRepository? repository})
    : _repository = repository ?? CreditCardPaymentRepositoryImp();

  Future<PaymentProcessResponseEntity> execute(
    PaymentProcessEntity paymentEntity,
  ) async {
    return await _repository.processPayment(paymentEntity);
  }
}
