import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';
import 'package:xpapp/features/ecommerce/presentation/states/checkout_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/states/payment_method_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/states/your_bag_notifier.dart';
import 'package:xpapp/features/login/presemtation/states/login_notifier.dart';
import 'package:xpapp/features/login/presemtation/states/login_state.dart';

class CheckoutView extends ConsumerWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _StageButtonSection(),
              const SizedBox(height: 20),
              _TextAreaSection(),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(child: _PaymentMethodsSection()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: _PaymentConfirmationSection(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StageButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _StageButton(
          step: 1,
          label: 'Your bag',
          isCompleted: true,
          onTap: () => router.goNamed(Routes.yourBag),
        ),
        const _StageButton(step: 2, label: 'Shipping', isCompleted: true),
        const _StageButton(
          step: 3,
          label: 'Payment',
          isCompleted: false,
          isActive: true,
        ),
      ],
    );
  }
}

class _StageButton extends StatelessWidget {
  final int step;
  final String label;
  final bool isActive;
  final bool isCompleted;
  final VoidCallback? onTap;

  const _StageButton({
    required this.step,
    required this.label,
    this.isActive = false,
    this.isCompleted = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final active = isActive || isCompleted;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(32),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Column(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: active ? Colors.blue : Colors.blue.shade50,
              child: isCompleted
                  ? const Icon(Icons.check, color: Colors.white, size: 14)
                  : Text(
                      step.toString(),
                      style: TextStyle(
                        color: active ? Colors.white : Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                color: active ? Colors.blue : Colors.grey,
                fontWeight: active ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TextAreaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'Choose a payment method',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'You won\'t be charged until you review the order on the next page',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}

class _PaymentMethodsSection extends ConsumerStatefulWidget {
  const _PaymentMethodsSection();

  @override
  ConsumerState<_PaymentMethodsSection> createState() =>
      _PaymentMethodsSectionState();
}

class _PaymentMethodsSectionState
    extends ConsumerState<_PaymentMethodsSection> {
  bool _sameBillingAddress = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(paymentMethodProvider.notifier).loadPaymentMethods();
    });
  }

  @override
  Widget build(BuildContext context) {
    final paymentState = ref.watch(paymentMethodProvider);
    final paymentNotifier = ref.read(paymentMethodProvider.notifier);
    final selectedMethod = paymentState.selectedMethod;
    final isApplePaySelected = paymentState.useApplePay;
    final selectedPaymentLabel = isApplePaySelected
        ? 'Apple Pay'
        : selectedMethod != null
        ? '${selectedMethod.cardBrand} ${selectedMethod.maskedNumber}'
        : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.shade300),
            boxShadow: [
              const BoxShadow(
                color: Color(0x0A000000),
                blurRadius: 16,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Credit Card',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              if (paymentState.methods.isEmpty) ...[
                const Text(
                  'No saved credit cards yet. Add a new card to continue.',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 20),
              ] else ...[
                for (final method in paymentState.methods) ...[
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: paymentState.selectedMethodId == method.number
                          ? Colors.blue.shade50
                          : Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: paymentState.selectedMethodId == method.number
                            ? Colors.blue
                            : Colors.grey.shade300,
                      ),
                    ),
                    child: ListTile(
                      onTap: () {
                        paymentNotifier.selectPaymentMethod(method.number);
                      },
                      title: Text(
                        method.cardBrand,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(method.maskedNumber),
                          const SizedBox(height: 4),
                          Text('Holder: ${method.holder}'),
                        ],
                      ),
                      trailing: paymentState.selectedMethodId == method.number
                          ? const Icon(Icons.check_circle, color: Colors.blue)
                          : null,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                  ),
                ],
              ],
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () => _showAddCardDialog(context, ref),
                  child: const Text(
                    '+ Add new card',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              CheckboxListTile(
                tristate: false,
                value: _sameBillingAddress,
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _sameBillingAddress = value;
                    });
                  }
                },
                title: const Text(
                  'My billing address is the same as my shipping address',
                ),
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
                dense: true,
              ),
              if (selectedPaymentLabel != null) ...[
                const SizedBox(height: 16),
                Text(
                  'Selected: $selectedPaymentLabel',
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 16),
        InkWell(
          onTap: paymentNotifier.selectApplePay,
          borderRadius: BorderRadius.circular(24),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: isApplePaySelected ? Colors.blue : Colors.grey.shade300,
              ),
              boxShadow: [
                const BoxShadow(
                  color: Color(0x0A000000),
                  blurRadius: 16,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'Apple Pay',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                if (isApplePaySelected)
                  const Icon(Icons.check_circle, color: Colors.blue),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _showAddCardDialog(BuildContext context, WidgetRef ref) async {
    final cardHolderController = TextEditingController();
    final cardNumberController = TextEditingController();
    final expirationController = TextEditingController();
    final cvcController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    await showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Credit Card'),
          content: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: cardHolderController,
                    decoration: const InputDecoration(labelText: 'Card Holder'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Enter the card holder name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: cardNumberController,
                    decoration: const InputDecoration(
                      labelText: 'Card Number',
                      hintText: '1234 5678 9012 3456',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      final cleaned = value?.replaceAll(' ', '') ?? '';
                      if (cleaned.length < 12) {
                        return 'Enter a valid card number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: expirationController,
                    decoration: const InputDecoration(
                      labelText: 'Expiration Date',
                      hintText: 'MM/YY',
                    ),
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Enter expiration date';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: cvcController,
                    decoration: const InputDecoration(
                      labelText: 'CVC',
                      hintText: '123',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.trim().length < 3) {
                        return 'Enter CVC';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  final cardNumber = cardNumberController.text.replaceAll(
                    ' ',
                    '',
                  );
                  final method = PaymentMethodEntity(
                    holder: cardHolderController.text.trim(),
                    number: cardNumber,
                    behavior: '',
                    availableFunds: 0,
                    declineReason: '',
                    brand: _cardBrand(cardNumber),
                  );

                  ref
                      .read(paymentMethodProvider.notifier)
                      .addPaymentMethod(method);
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  String _cardBrand(String cardNumber) {
    final cleaned = cardNumber.replaceAll(' ', '');
    if (cleaned.startsWith('4')) {
      return 'Visa';
    }
    if (cleaned.startsWith('5')) {
      return 'MasterCard';
    }
    if (cleaned.startsWith('3')) {
      return 'American Express';
    }
    return 'Credit Card';
  }
}

class _PaymentConfirmationSection extends ConsumerStatefulWidget {
  const _PaymentConfirmationSection() : super();

  @override
  ConsumerState<_PaymentConfirmationSection> createState() =>
      _PaymentConfirmationSectionState();
}

class _PaymentConfirmationSectionState
    extends ConsumerState<_PaymentConfirmationSection> {
  @override
  Widget build(BuildContext context) {
    final paymentState = ref.watch(paymentMethodProvider);
    final selectedMethod = paymentState.selectedMethod;
    final isApplePaySelected = paymentState.useApplePay;
    final totalPrice = ref.watch(yourBagProvider).totalPrice;
    final canPay = selectedMethod != null || isApplePaySelected;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total: \$${totalPrice.toStringAsFixed(2)}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: canPay
              ? () => _processPayment(
                  selectedMethod,
                  totalPrice,
                  isApplePaySelected,
                )
              : null,
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: canPay ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                isApplePaySelected
                    ? 'Pay with Apple Pay'
                    : selectedMethod != null
                    ? 'Pay with ${selectedMethod.cardBrand} ${selectedMethod.maskedNumber}'
                    : 'Select a payment method',
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _processPayment(
    PaymentMethodEntity? selectedMethod,
    double totalPrice,
    bool useApplePay,
  ) async {
    // Validar si el usuario está logueado
    final loginState = ref.read(loginProvider);
    final isLoggedIn =
        loginState is LoginSuccessState ||
        loginState is LoginAdminState ||
        (loginState is LoginLoggedInState && loginState.isLoggedIn);

    if (!isLoggedIn) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please log in to complete your purchase'),
          duration: Duration(seconds: 2),
        ),
      );
      router.goNamed(Routes.login);
      return;
    }

    String? cvc;
    if (!useApplePay) {
      // cvc = await _showCvcDialog();
      // if (cvc == null) {
      //   return;
      // }
      cvc = "123";
      //return;
    }

    if (!mounted) return;

    if (!useApplePay && selectedMethod != null) {
      final paymentEntity = PaymentProcessEntity(
        cardNumber: selectedMethod.number,
        expiryDate: '',
        cvv: cvc!,
        cardHolderName: selectedMethod.holder,
        amount: totalPrice,
        currency: 'USD',
      );

      try {
        final response = await ref
            .read(checkoutProvider.notifier)
            .paymentProcess(paymentEntity);
        if (!mounted) return;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(response.message)));
        router.goNamed(Routes.ecommerceHome);
      } catch (error) {
        if (!mounted) return;
        final message = error.toString().replaceFirst('Exception: ', '');
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Payment failed: $message')));
      }
    } else {
      await Future.delayed(const Duration(milliseconds: 400));
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Apple Pay payment completed successfully.'),
        ),
      );
      router.goNamed(Routes.ecommerceHome);
    }
  }

  // ignore: unused_element
  Future<String?> _showCvcDialog() async {
    final cvcController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm Payment'),
          content: Form(
            key: formKey,
            child: TextFormField(
              controller: cvcController,
              decoration: const InputDecoration(
                labelText: 'CVC',
                hintText: '123',
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
              validator: (value) {
                if (value == null || value.trim().length < 3) {
                  return 'Enter a valid CVC';
                }
                return null;
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(null),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  Navigator.of(context).pop(cvcController.text.trim());
                }
              },
              child: const Text('Pay'),
            ),
          ],
        );
      },
    );
  }
}
