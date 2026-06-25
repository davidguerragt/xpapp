import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/sale_entity.dart';

part 'sale_model.freezed.dart';
part 'sale_model.g.dart';

@freezed
abstract class SaleModel with _$SaleModel {
  factory SaleModel({
    required String id,
    required String date,
    required String user,
    required double amount,
  }) = _SaleModel;

  factory SaleModel.fromJson(Map<String, dynamic> json) =>
      _$SaleModelFromJson(json);

  factory SaleModel.fromEntity(SaleEntity e) {
    return SaleModel(id: e.id, date: e.date, user: e.user, amount: e.amount);
  }
}
