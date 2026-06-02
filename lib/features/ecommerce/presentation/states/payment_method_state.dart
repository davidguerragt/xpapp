import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';

class PaymentMethodState {
  final List<PaymentMethodEntity> methods;
  final String? selectedMethodId;

  const PaymentMethodState({this.methods = const [], this.selectedMethodId});

  bool get hasMethods => methods.isNotEmpty;

  PaymentMethodEntity? get selectedMethod {
    if (methods.isEmpty) {
      return null;
    }

    if (selectedMethodId == null) {
      return methods.first;
    }

    return methods.firstWhere(
      (method) => method.id == selectedMethodId,
      orElse: () => methods.first,
    );
  }

  PaymentMethodState copyWith({
    List<PaymentMethodEntity>? methods,
    String? selectedMethodId,
  }) {
    return PaymentMethodState(
      methods: methods ?? this.methods,
      selectedMethodId: selectedMethodId ?? this.selectedMethodId,
    );
  }
}
