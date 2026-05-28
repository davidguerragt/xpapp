import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckoutView extends ConsumerWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                _StageButtonSection(),
                _TextAreaSection(),
                _PaymentMethodsSection(),
                _PaymentConfirmationSection(),
              ],
            ),
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
  String? get opcionSeleccionada => null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        RadioListTile<String>(
          title: const Text('Credit Card'),
          value: 'creditCard',
          groupValue: opcionSeleccionada,
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.credit_card),
          title: Text('MasterCard'),
          subtitle: Text('**** **** **** 1234'),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            // Handle credit card selection
          },
        ),
        ListTile(
          leading: Icon(Icons.credit_card),
          title: Text('Visa'),
          subtitle: Text('**** **** **** 1234'),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            // Handle credit card selection
          },
        ),
        TextButton(
          onPressed: () {
            // Handle PayPal selection
          },
          child: Text(
            '+ Add New Card',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
        RadioListTile<String>(
          title: const Text('Apple Pay'),
          value: 'applePay',
          groupValue: opcionSeleccionada,
        ),
      ],
    );
  }
}

class _PaymentConfirmationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: () {},
          child: const Center(
            child: Text(
              'Process Payment',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
