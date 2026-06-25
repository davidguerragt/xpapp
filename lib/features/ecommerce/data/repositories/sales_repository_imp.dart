import 'package:xpapp/features/ecommerce/data/data_sources/firebase_sales_data_source.dart';
import 'package:xpapp/features/ecommerce/data/models/sale_model.dart';
import 'package:xpapp/features/ecommerce/domain/entities/sale_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/sales_repository.dart';

class SalesRepositoryImp implements SalesRepository {
  final FirebaseSalesDataSource _dataSource;

  SalesRepositoryImp({FirebaseSalesDataSource? dataSource})
    : _dataSource = dataSource ?? FirebaseSalesDataSource();

  @override
  Stream<List<SaleEntity>> getSales(String user) {
    final sales = _dataSource.getSales(user);
    return sales.map(
      (saleList) => saleList.map((sale) => SaleEntity.fromModel(sale)).toList(),
    );
  }

  @override
  Future<String> saveSale(SaleEntity sale) {
    final SaleModel m = SaleModel.fromEntity(sale);
    return _dataSource.postSale(m);
  }
}
