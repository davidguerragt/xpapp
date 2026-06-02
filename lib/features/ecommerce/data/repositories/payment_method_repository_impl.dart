import 'package:xpapp/features/ecommerce/data/data_sources/local_payment_method_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/payment_method_repository.dart';

class PaymentMethodRepositoryImpl implements PaymentMethodRepository {
  final LocalPaymentMethodDataSource _localDataSource;

  PaymentMethodRepositoryImpl(this._localDataSource);

  @override
  Future<List<PaymentMethodEntity>> getPaymentMethods() async {
    final models = await _localDataSource.getPaymentMethods();
    return models.map(PaymentMethodEntity.fromModel).toList();
  }

  @override
  Future<void> savePaymentMethods(List<PaymentMethodEntity> methods) async {
    final models = methods.map((method) => method.toModel()).toList();
    await _localDataSource.savePaymentMethods(models);
  }
}
