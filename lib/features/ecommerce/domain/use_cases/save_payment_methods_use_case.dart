import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/payment_method_repository.dart';

class SavePaymentMethodsUseCase {
  final PaymentMethodRepository _repository;

  SavePaymentMethodsUseCase(this._repository);

  Future<void> call(List<PaymentMethodEntity> methods) async {
    await _repository.savePaymentMethods(methods);
  }
}
