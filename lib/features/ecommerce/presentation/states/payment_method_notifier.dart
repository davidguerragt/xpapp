import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/data/data_sources/local_payment_method_data_source.dart';
import 'package:xpapp/features/ecommerce/data/repositories/payment_method_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/get_payment_methods_use_case.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/save_payment_methods_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/payment_method_state.dart';

final paymentMethodProvider =
    StateNotifierProvider<PaymentMethodNotifier, PaymentMethodState>(
      (ref) => PaymentMethodNotifier(
        GetPaymentMethodsUseCase(
          PaymentMethodRepositoryImpl(LocalPaymentMethodDataSource()),
        ),
        SavePaymentMethodsUseCase(
          PaymentMethodRepositoryImpl(LocalPaymentMethodDataSource()),
        ),
      )..loadPaymentMethods(),
    );

class PaymentMethodNotifier extends StateNotifier<PaymentMethodState> {
  final GetPaymentMethodsUseCase _getPaymentMethodsUseCase;
  final SavePaymentMethodsUseCase _savePaymentMethodsUseCase;

  PaymentMethodNotifier(
    this._getPaymentMethodsUseCase,
    this._savePaymentMethodsUseCase,
  ) : super(const PaymentMethodState());

  Future<void> loadPaymentMethods() async {
    final methods = await _getPaymentMethodsUseCase.call();
    state = state.copyWith(
      methods: methods,
      selectedMethodId: methods.isNotEmpty ? methods.first.id : null,
      useApplePay: false,
    );
  }

  Future<void> addPaymentMethod(PaymentMethodEntity method) async {
    final updatedMethods = [...state.methods, method];
    await _savePaymentMethodsUseCase.call(updatedMethods);
    state = state.copyWith(
      methods: updatedMethods,
      selectedMethodId: method.id,
      useApplePay: false,
    );
  }

  void selectPaymentMethod(String methodId) {
    state = state.copyWith(selectedMethodId: methodId, useApplePay: false);
  }

  void selectApplePay() {
    state = state.copyWith(selectedMethodId: null, useApplePay: true);
  }
}
