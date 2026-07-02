import 'package:xpapp/features/ecommerce/data/repositories/payment_method_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/payment_method_repository.dart';

class GetPaymentMethodsUseCase {
  final PaymentMethodRepository _repository;

  GetPaymentMethodsUseCase({PaymentMethodRepository? repository})
    : _repository = repository ?? PaymentMethodRepositoryImpl();

  Future<List<PaymentMethodEntity>> call() async {
    return await _repository.getPaymentMethods();
  }
}
