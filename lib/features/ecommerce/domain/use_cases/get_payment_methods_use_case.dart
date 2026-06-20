import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/payment_method_repository.dart';

class GetPaymentMethodsUseCase {
  final PaymentMethodRepository _repository;

  GetPaymentMethodsUseCase(this._repository);

  Future<List<PaymentMethodEntity>> call() async {
    final list = _repository.getPaymentMethods();
    return list;
  }
}
