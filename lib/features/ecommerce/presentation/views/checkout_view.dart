import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_method_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/payment_process_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/checkout_payment_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/payment_method_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/states/your_bag_notifier.dart';

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
        _StageButton(label: 'Your Bag', isActive: false),
        _StageButton(label: 'Shipping', isActive: false),
        _StageButton(label: 'Payment', isActive: true),
      ],
    );
  }
}

class _StageButton extends StatelessWidget {
  final String label;
  final bool isActive;

  const _StageButton({required this.label, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: isActive ? Colors.blue : Colors.lightBlue.shade100,
          child: Icon(Icons.check, color: Colors.white, size: 12),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
        ),
      ],
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

class _PaymentMethodsSection extends ConsumerWidget {
  const _PaymentMethodsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentState = ref.watch(paymentMethodProvider);
    final paymentNotifier = ref.watch(paymentMethodProvider.notifier);
    final selectedMethod = paymentState.selectedMethod;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (paymentState.methods.isEmpty) ...[
          const SizedBox(height: 16),
          const Text(
            'No saved credit cards yet. Add a new card to continue.',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 20),
        ] else ...[
          ...paymentState.methods.map((method) {
            return RadioListTile<String>(
              title: Text(method.cardBrand),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(method.maskedNumber),
                  Text('Exp: ${method.expirationDate}'),
                ],
              ),
              value: method.id,
              groupValue: paymentState.selectedMethodId,
              onChanged: (value) {
                if (value != null) {
                  paymentNotifier.selectPaymentMethod(value);
                }
              },
            );
          }),
          const SizedBox(height: 20),
        ],
        TextButton(
          onPressed: () => _showAddCardDialog(context, ref),
          child: const Text(
            '+ Add New Card',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        if (selectedMethod != null) ...[
          const SizedBox(height: 16),
          Text(
            'Selected: ${selectedMethod.cardBrand} ${selectedMethod.maskedNumber}',
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
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
                    id: DateTime.now().millisecondsSinceEpoch.toString(),
                    cardHolderName: cardHolderController.text.trim(),
                    cardNumber: cardNumber,
                    expirationDate: expirationController.text.trim(),
                    cardBrand: _cardBrand(cardNumber),
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
  const _PaymentConfirmationSection({Key? key}) : super(key: key);

  @override
  ConsumerState<_PaymentConfirmationSection> createState() =>
      _PaymentConfirmationSectionState();
}

class _PaymentConfirmationSectionState
    extends ConsumerState<_PaymentConfirmationSection> {
  @override
  Widget build(BuildContext context) {
    final selectedMethod = ref.watch(paymentMethodProvider).selectedMethod;
    final totalPrice = ref.watch(yourBagProvider).totalPrice;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total: \$${totalPrice?.toStringAsFixed(2) ?? '0.00'}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: selectedMethod != null
              ? () => _processPayment(selectedMethod, totalPrice ?? 0.0)
              : null,
          child: Container(
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
              color: selectedMethod != null ? Colors.indigoAccent : Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                selectedMethod != null
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
    PaymentMethodEntity selectedMethod,
    double totalPrice,
  ) async {
    final cvc = await _showCvcDialog();
    if (cvc == null) {
      return;
    }

    if (!mounted) return;

    final paymentEntity = PaymentProcessEntity(
      cardNumber: selectedMethod.cardNumber,
      expiryDate: selectedMethod.expirationDate,
      cvv: cvc,
      cardHolderName: selectedMethod.cardHolderName,
      amount: totalPrice,
    );

    final checkoutUseCase = CheckoutPaymentUseCase(null);

    if (!mounted) return;
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await checkoutUseCase.execute(paymentEntity);
      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Payment completed successfully.')),
      );
      Navigator.of(context).pop();
    } catch (error) {
      if (!mounted) return;
      Navigator.of(context).pop();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Payment failed: $error')));
    }
  }

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
