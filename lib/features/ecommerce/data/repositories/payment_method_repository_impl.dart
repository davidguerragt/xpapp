import 'package:xpapp/features/ecommerce/data/data_sources/credit_cards_get_cards_data_source.dart';
import 'package:xpapp/features/ecommerce/data/data_sources/local_payment_method_data_source.dart';
import 'package:xpapp/features/ecommerce/data/models/payment_method_model.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/payment_method_repository.dart';

class PaymentMethodRepositoryImpl implements PaymentMethodRepository {
  final LocalPaymentMethodDataSource _localDataSource;
  final CreditCardsGetCardsDataSource _remoteDataSource;

  PaymentMethodRepositoryImpl({
    required LocalPaymentMethodDataSource? localDataSource,
    required CreditCardsGetCardsDataSource? remoteDataSource,
  }) : _localDataSource = localDataSource ?? LocalPaymentMethodDataSource(),
       _remoteDataSource = remoteDataSource ?? CreditCardsGetCardsDataSource();

  PaymentMethodRepositoryImpl.local({
    required LocalPaymentMethodDataSource localDataSource,
  }) : _localDataSource = localDataSource,
       _remoteDataSource = CreditCardsGetCardsDataSource();

  @override
  Future<List<PaymentMethodEntity>> getPaymentMethods() async {
    final models = await _localDataSource.getPaymentMethods();
    if (models.isEmpty) {
      final models = await _remoteDataSource.getCards();
      await _localDataSource.savePaymentMethods(models);
    }
    return models.map(PaymentMethodEntity.fromModel).toList();
  }

  @override
  Future<void> savePaymentMethods(List<PaymentMethodEntity> methods) async {
    final models = methods.map(PaymentMethodModel.fromEntity).toList();
    await _localDataSource.savePaymentMethods(models);
  }
}
