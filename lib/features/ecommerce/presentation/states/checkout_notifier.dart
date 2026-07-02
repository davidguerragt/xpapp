import 'package:riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_response_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/sale_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/checkout_payment_use_case.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/get_payment_methods_use_case.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/save_sale_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/checkout_state.dart';

final checkoutProvider = StateNotifierProvider<CheckoutNotifier, CheckoutState>(
  (ref) => CheckoutNotifier(),
);

class CheckoutNotifier extends StateNotifier<CheckoutState> {
  final GetPaymentMethodsUseCase _getPaymentMethodsUseCase;
  final CheckoutPaymentUseCase _checkoutPaymentUseCase;
  final SaveSaleUseCase _saveSaleUseCase;

  CheckoutNotifier({
    GetPaymentMethodsUseCase? getPaymentMethodsUseCase,
    CheckoutPaymentUseCase? checkoutPaymentUseCase,
    SaveSaleUseCase? saveSaleUseCase,
  }) : _getPaymentMethodsUseCase =
           getPaymentMethodsUseCase ?? GetPaymentMethodsUseCase(),
       _checkoutPaymentUseCase =
           checkoutPaymentUseCase ?? CheckoutPaymentUseCase(),
       _saveSaleUseCase = saveSaleUseCase ?? SaveSaleUseCase(),
       super(CheckoutState.initial());

  Future<List<PaymentMethodEntity>> getPaymentMethods() async {
    state = CheckoutState.initial();
    try {
      final pm = await _getPaymentMethodsUseCase.call();
      return pm;
    } catch (e) {
      state = CheckoutState.error(
        error: 'Error getting payment methods: ${e.toString()}',
      );
      rethrow;
    }
  }

  Future<PaymentProcessResponseEntity> paymentProcess(
    PaymentProcessEntity payment,
  ) async {
    try {
      state = CheckoutState.paying();
      final response = await _checkoutPaymentUseCase.execute(payment);
      // ignore: unused_local_variable
      final saveSale = await _saveSaleUseCase.saveSale(
        SaleEntity(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          date: DateTime.now().toIso8601String().split('T')[0],
          user: payment.cardHolderName,
          amount: payment.amount,
        ),
      );
      return response;
    } catch (e) {
      state = CheckoutState.error(
        error: 'Error processing checkout payment: ${e.toString()}',
      );
      rethrow;
    }
  }
}
