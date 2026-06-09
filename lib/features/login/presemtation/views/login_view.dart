import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/consts/assets.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/core/widgets/gemeral_widgets.dart';
import 'package:xpapp/features/login/presemtation/states/login_notifier.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: _BodyWidget())),
    );
  }
}

class _BodyWidget extends ConsumerWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  _BodyWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        // Logo
        Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Image.asset(Assets.storeLogo, width: 120, height: 120),
        ),
        // Formulario de login
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // Email
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                'Please login to your account',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
              SizedBox(height: 24),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              // Password
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              // Botón de login
              BlueBigButton(
                route: Routes.ecommerceHome,
                buttonText: 'Login',
                onTap: () {
                  final email = emailController.text;
                  final password = passwordController.text;
                  if (email.isNotEmpty && password.isNotEmpty) {
                    ref.read(loginProvider.notifier).login(email, password);
                    router.goNamed(Routes.ecommerceHome);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter email and password'),
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: 16),
              // Enlace a registro
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.indigoAccent),
                  ),
                  TextButton(
                    onPressed: () {
                      router.goNamed(Routes.register);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
