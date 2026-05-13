import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/onboarding/presentation/states/personalise_notifier.dart';
import 'package:xpapp/features/onboarding/presentation/widgets/checkbox_item.dart';

class PersonaliseView extends ConsumerWidget {
  const PersonaliseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedItems = ref.watch(personaliseNotifierProvider).interests;
    final isNextEnabled = selectedItems.isNotEmpty;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              const _ProgressSection(),
              const SizedBox(height: 16),
              _TitleSection(selectedCount: selectedItems.length),
              const SizedBox(height: 16),
              Expanded(child: _CheckboxSection()),
              const SizedBox(height: 16),
              _ButtonSection(enabled: isNextEnabled),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProgressSection extends StatelessWidget {
  const _ProgressSection();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8,
      child: Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: LinearProgressIndicator(
          minHeight: 8,
          value: 0.5,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.indigoAccent),
        ),
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  final int selectedCount;
  const _TitleSection({required this.selectedCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        const Text(
          'Personalise your experience',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          selectedCount == 0
              ? 'Choose your interests.'
              : 'Selected $selectedCount interest${selectedCount == 1 ? '' : 's'}.',
          style: const TextStyle(fontSize: 14, color: Colors.grey),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

class _CheckboxSection extends ConsumerWidget {
  const _CheckboxSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(personaliseNotifierProvider);
    final notifier = ref.read(personaliseNotifierProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: SingleChildScrollView(
        child: Column(
          children: InterestsData.interests
              .map(
                (option) => CheckboxItem(
                  title: option,
                  value: state.interests.contains(option),
                  onChanged: (_) => notifier.toggleInterests(option),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  final bool enabled;
  const _ButtonSection({required this.enabled});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? () => router.goNamed(Routes.subscription) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            color: enabled ? Colors.indigoAccent : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(
                color: enabled ? Colors.white : Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
