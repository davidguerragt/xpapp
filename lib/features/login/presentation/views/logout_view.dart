import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/login/presentation/states/logout_notifier.dart';

class LogoutView extends ConsumerWidget {
  const LogoutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have been logged out.'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  final logoutNotifier = ref.read(logoutProvider.notifier);
                  logoutNotifier.logout();
                  router.goNamed(Routes.login);
                },
                child: const Text('Go to Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
