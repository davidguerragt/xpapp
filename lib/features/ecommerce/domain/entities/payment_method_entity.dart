import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/data/models/payment_method_model.dart';

part 'payment_method_entity.freezed.dart';
part 'payment_method_entity.g.dart';

@freezed
abstract class PaymentMethodEntity with _$PaymentMethodEntity {
  const factory PaymentMethodEntity({
    required String number,
    required String holder,
    required String behavior,
    required int availableFunds,
    required String declineReason,
    required String brand,
  }) = _PaymentMethodEntity;

  factory PaymentMethodEntity.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodEntityFromJson(json);

  factory PaymentMethodEntity.fromModel(PaymentMethodModel model) =>
      PaymentMethodEntity(
        number: model.number,
        holder: model.holder,
        behavior: model.behavior,
        availableFunds: model.availableFunds,
        declineReason: model.declineReason,
        brand: '',
      );
}

extension PaymentMethodEntityX on PaymentMethodEntity {
  String get cardBrand {
    final cleaned = number.replaceAll(' ', '');

    if (cleaned.startsWith('4')) return 'Visa';

    final bin2 = cleaned.length >= 2
        ? int.tryParse(cleaned.substring(0, 2))
        : null;
    final bin3 = cleaned.length >= 3
        ? int.tryParse(cleaned.substring(0, 3))
        : null;
    final bin4 = cleaned.length >= 4
        ? int.tryParse(cleaned.substring(0, 4))
        : null;
    final bin6 = cleaned.length >= 6
        ? int.tryParse(cleaned.substring(0, 6))
        : null;

    // Mastercard: 51–55 o 2221–2720
    if (bin2 != null && bin2 >= 51 && bin2 <= 55) return 'Mastercard';
    if (bin4 != null && bin4 >= 2221 && bin4 <= 2720) return 'Mastercard';

    // American Express: 34 o 37
    if (bin2 == 34 || bin2 == 37) return 'American Express';

    // Discover: 6011, 622126–622925, 644–649, 65
    if (cleaned.startsWith('6011') || cleaned.startsWith('65'))
      // ignore: curly_braces_in_flow_control_structures
      return 'Discover';
    if (bin3 != null && bin3 >= 644 && bin3 <= 649) return 'Discover';
    if (bin6 != null && bin6 >= 622126 && bin6 <= 622925) return 'Discover';

    // Diners Club: 300–305, 36, 38
    if (bin3 != null && bin3 >= 300 && bin3 <= 305) return 'Diners Club';
    if (bin2 == 36 || bin2 == 38) return 'Diners Club';

    return 'Unknown';
  }

  String get maskedNumber {
    final cleaned = number.replaceAll(' ', '');
    if (cleaned.length >= 4) {
      return '**** **** **** ${cleaned.substring(cleaned.length - 4)}';
    }
    return '**** **** **** ${cleaned.padLeft(4, '*')}';
  }
}
