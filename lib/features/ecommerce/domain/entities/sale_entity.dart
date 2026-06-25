import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/sale_model.dart';

part 'sale_entity.freezed.dart';

@freezed
abstract class SaleEntity with _$SaleEntity {
  factory SaleEntity({
    required String id,
    required String date,
    required String user,
    required double amount,
  }) = _SaleEntity;

  factory SaleEntity.fromModel(SaleModel model) {
    return SaleEntity(
      id: model.id,
      date: model.date,
      user: model.user,
      amount: model.amount,
    );
  }
}
