import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';

part 'payment_method_model.freezed.dart';
part 'payment_method_model.g.dart';

@freezed
abstract class PaymentMethodModel with _$PaymentMethodModel {
  factory PaymentMethodModel({
    required String number,
    required String holder,
    required String behavior,
    required int availableFunds,
    required String declineReason,
  }) = _PaymentMethodModel;

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodModelFromJson(json);

  factory PaymentMethodModel.fromEntity(PaymentMethodEntity entity) {
    return PaymentMethodModel(
      number: entity.number,
      holder: entity.holder,
      behavior: entity.behavior,
      availableFunds: entity.availableFunds,
      declineReason: entity.declineReason,
    );
  }
}
