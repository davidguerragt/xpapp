import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/consts/assets.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/core/widgets/gemeral_widgets.dart';
import 'package:xpapp/features/login/presemtation/states/login_notifier.dart';
import 'package:xpapp/features/login/presemtation/states/login_state.dart';

class RegisterView extends ConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: _BodyWidget())),
    );
  }
}

class _BodyWidget extends ConsumerStatefulWidget {
  const _BodyWidget();

  @override
  ConsumerState<_BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends ConsumerState<_BodyWidget> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  String selectedRole = 'client';
  final List<String> roles = ['client', 'admin'];

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    // Listen to login state changes and handle navigation/snackbars
    ref.listen<LoginState>(loginProvider, (previous, next) {
      if (next is LoginErrorState) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: ${next.errorMessage}')));
      } else if (next is LoginSuccessState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Account created successfully!')),
        );
        router.goNamed(Routes.login);
      }
    });
    return Column(
      children: [
        // Logo
        Padding(
          padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Image.asset(Assets.storeLogo, width: 120, height: 120),
        ),
        // Formulario de registro
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // Email
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                'Please fill in the details to create an account',
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
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: selectedRole,
                decoration: InputDecoration(
                  labelText: 'Role',
                  border: OutlineInputBorder(),
                ),
                items: roles
                    .map(
                      (role) => DropdownMenuItem(
                        value: role,
                        child: Text(role[0].toUpperCase() + role.substring(1)),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      selectedRole = value;
                    });
                  }
                },
              ),
              SizedBox(height: 24),

              BlueBigButton(
                route: '',
                buttonText: 'Create Account',
                onTap: () {
                  final email = emailController.text.trim();
                  final password = passwordController.text.trim();

                  // Validate email format
                  if (!_isValidEmail(email)) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter a valid email address'),
                      ),
                    );
                    return;
                  }

                  // Validate password length
                  if (password.length < 6) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Password must be at least 6 characters'),
                      ),
                    );
                    return;
                  }

                  ref.read(loginProvider.notifier).register(
                    email,
                    password,
                    selectedRole,
                  );
                },
              ),
              SizedBox(height: 16),
              // Enlace a login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.indigoAccent),
                  ),
                  TextButton(
                    onPressed: () => router.goNamed(Routes.login),
                    child: Text(
                      'Login',
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
