import 'package:xpapp/features/ecommerce/data/repositories/sales_repository_imp.dart';
import 'package:xpapp/features/ecommerce/domain/entities/sale_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/sales_repository.dart';

class GetSalesUseCase {
  final SalesRepository _repository;

  GetSalesUseCase({SalesRepository? repository})
    : _repository = repository ?? SalesRepositoryImp();

  Stream<List<SaleEntity>> getSales(String user) {
    return _repository.getSales(user);
  }
}
