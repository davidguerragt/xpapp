import 'package:xpapp/features/ecommerce/data/repositories/sales_repository_imp.dart';
import 'package:xpapp/features/ecommerce/domain/entities/sale_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/sales_repository.dart';

class SaveSaleUseCase {
  final SalesRepository _repository;

  SaveSaleUseCase({SalesRepository? repository})
    : _repository = repository ?? SalesRepositoryImp();

  Future<String> saveSale(SaleEntity sale) {
    return _repository.saveSale(sale);
  }
}
