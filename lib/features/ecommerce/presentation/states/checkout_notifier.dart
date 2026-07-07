import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_response_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/transaction_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/checkout_payment_use_case.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/get_payment_methods_use_case.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/save_transaction_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/checkout_state.dart';
import 'package:xpapp/features/ecommerce/presentation/states/your_bag_notifier.dart';

final checkoutProvider = StateNotifierProvider<CheckoutNotifier, CheckoutState>(
  (ref) => CheckoutNotifier(ref: ref),
);

class CheckoutNotifier extends StateNotifier<CheckoutState> {
  final GetPaymentMethodsUseCase _getPaymentMethodsUseCase;
  final CheckoutPaymentUseCase _checkoutPaymentUseCase;
  final SaveTransactionUseCase _saveTransactionUseCase;
  final dynamic _ref;

  CheckoutNotifier({
    GetPaymentMethodsUseCase? getPaymentMethodsUseCase,
    CheckoutPaymentUseCase? checkoutPaymentUseCase,
    SaveTransactionUseCase? saveTransactionUseCase,
    required dynamic ref,
  }) : _getPaymentMethodsUseCase =
           getPaymentMethodsUseCase ?? GetPaymentMethodsUseCase(),
       _checkoutPaymentUseCase =
           checkoutPaymentUseCase ?? CheckoutPaymentUseCase(),
       _saveTransactionUseCase =
           saveTransactionUseCase ?? SaveTransactionUseCase(),
       _ref = ref,
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
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        state = CheckoutState.error(error: 'No user is currently logged in.');
        return Future.error('No user is currently logged in.');
      }
      // ignore: unused_local_variable
      final saveTransaction = await _saveTransactionUseCase.saveTransaction(
        TransactionEntity(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          date: DateTime.now().toIso8601String().split('T')[0],
          user: currentUser.email ?? '',
          amount: payment.amount,
          holderName: payment.cardHolderName,
          cardNumber: payment.cardNumber,
        ),
      );

      // Limpiar la carreta después de pago exitoso
      await _ref.read(yourBagProvider.notifier).clearBag();

      return response;
    } catch (e) {
      state = CheckoutState.error(
        error: 'Error processing checkout payment: ${e.toString()}',
      );
      rethrow;
    }
  }
}
