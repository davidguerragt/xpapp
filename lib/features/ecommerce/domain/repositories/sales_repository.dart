import 'package:xpapp/features/ecommerce/domain/entities/sale_entity.dart';

abstract class SalesRepository {
  Stream<List<SaleEntity>> getSales(String user);
  Future<String> saveSale(SaleEntity entity);
}
