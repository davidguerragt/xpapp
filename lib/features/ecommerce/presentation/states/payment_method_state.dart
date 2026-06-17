import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';

class PaymentMethodState {
  final List<PaymentMethodEntity> methods;
  final String? selectedMethodId;
  final bool useApplePay;

  const PaymentMethodState({
    this.methods = const [],
    this.selectedMethodId,
    this.useApplePay = false,
  });

  bool get hasMethods => methods.isNotEmpty;

  PaymentMethodEntity? get selectedMethod {
    if (useApplePay || methods.isEmpty) {
      return null;
    }

    if (selectedMethodId == null) {
      return methods.first;
    }

    return methods.firstWhere(
      (method) => method.number == selectedMethodId,
      orElse: () => methods.first,
    );
  }

  PaymentMethodState copyWith({
    List<PaymentMethodEntity>? methods,
    String? selectedMethodId,
    bool? useApplePay,
  }) {
    return PaymentMethodState(
      methods: methods ?? this.methods,
      selectedMethodId: selectedMethodId ?? this.selectedMethodId,
      useApplePay: useApplePay ?? this.useApplePay,
    );
  }
}
