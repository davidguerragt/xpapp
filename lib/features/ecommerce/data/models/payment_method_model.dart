import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';

part 'payment_method_model.freezed.dart';
part 'payment_method_model.g.dart';

@freezed
abstract class PaymentMethodModel with _$PaymentMethodModel {
  factory PaymentMethodModel({
    required String id,
    required String number,
    required String holder,
    required String behavior,
    required String availableFunds,
    required String declineReason,
    String? expirationDate,
    String? cardBrand,
  }) = _PaymentMethodModel;

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodModelFromJson(json);

  factory PaymentMethodModel.fromEntity(PaymentMethodEntity entity) {
    return PaymentMethodModel(
      id: entity.number,
      number: entity.number,
      holder: entity.holder,
      behavior: entity.behavior,
      availableFunds: entity.availableFunds,
      declineReason: entity.declineReason,
    );
  }
}
