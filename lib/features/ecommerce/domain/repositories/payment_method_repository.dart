import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';

abstract class PaymentMethodRepository {
  Future<void> savePaymentMethods(List<PaymentMethodEntity> methods);
  Future<List<PaymentMethodEntity>> getPaymentMethods();
}
