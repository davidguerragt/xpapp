import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/features/onboarding/presentation/widgets/option_item.dart';

class SubscriptionView extends ConsumerWidget {
  const SubscriptionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(flex: 1, child: _SubscriptionContent()),
              Expanded(flex: 2, child: _SubscriptionOptions()),
              Expanded(flex: 1, child: _SubscribeBenefits()),
              // Add subscription options and buttons here
            ],
          ),
        ),
      ),
    );
  }
}

class _SubscriptionContent extends StatelessWidget {
  const _SubscriptionContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Choose your subscription plan.',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Text(
          'And get a 7-day free trial.',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

class _SubscriptionOptions extends StatelessWidget {
  const _SubscriptionOptions();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          // Generate subscription options here
          ...OptionItemData.options.map(
            (option) => OptionItem(
              option: SubscriptionOption(
                name: option.name,
                price: option.price,
                discount: option.discount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SubscribeBenefits extends StatelessWidget {
  const _SubscribeBenefits();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You\'ll get:',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          ...['Unlimited access', '200GB storage', 'Sync all your devices'].map(
            (benefit) => Row(
              children: [
                Icon(Icons.star, color: Colors.indigoAccent),
                SizedBox(width: 8),
                Text(benefit),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
