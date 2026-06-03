import 'package:xpapp/features/ecommerce/data/data_sources/credit_card_payment_data_source.dart';
import 'package:xpapp/features/ecommerce/data/models/credit_card_payment_model.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/credit_card_paymemt_repository.dart';

class CreditCardPaymentRepositoryImp implements CreditCardPaymentRepository {
  final CreditCardPaymentDataSource _creditCardPaymentDataSource;

  CreditCardPaymentRepositoryImp({
    CreditCardPaymentDataSource? creditCardPaymentDataSource,
  }) : _creditCardPaymentDataSource =
           creditCardPaymentDataSource ?? CreditCardPaymentDataSource();

  @override
  Future<void> processPayment(PaymentProcessEntity paymentEntity) async {
    final paymentModel = CreditCardPaymentModel.fromEntity(paymentEntity);
    await _creditCardPaymentDataSource.processPayment(paymentModel);
  }
}
