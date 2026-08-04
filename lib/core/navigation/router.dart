import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:xpapp/features/administrator/presentation/views/product_edit_view.dart';
import 'package:xpapp/features/administrator/presentation/views/section_edit_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/checkout_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/home_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/item_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/product_abc_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/section_abc_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/transaction_list_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/your_bag_view.dart';
import 'package:xpapp/features/login/domain/use_cases/get_user_info_use_case.dart';
import 'package:xpapp/features/login/presemtation/views/login_view.dart';
import 'package:xpapp/features/login/presemtation/views/logout_view.dart';
import 'package:xpapp/features/login/presemtation/views/register_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/personalise_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/subscription_view.dart';

final _getUserRoleUseCase = GetUserInfoUseCase();
final _routerAuthRefresh = _AuthRouterRefreshNotifier();

class _AuthRouterRefreshNotifier extends ChangeNotifier {
  _AuthRouterRefreshNotifier() {
    _subscription = FirebaseAuth.instance.authStateChanges().listen((_) {
      notifyListeners();
    });
  }

  StreamSubscription<User?>? _subscription;

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

bool _requiresAuth(String path) {
  if (path.startsWith('/ecommerce/item/')) {
    return true;
  }

  return path == '/' ||
      path == '/ecommerce/your-bag' ||
      path == '/ecommerce/checkout' ||
      path == '/section-abc' ||
      path == '/product-abc' ||
      path == '/ecommerce/transaction-list';
}

bool _requiresAdmin(String path) {
  return path == '/section-abc' || path == '/product-abc';
}

final router = GoRouter(
  refreshListenable: _routerAuthRefresh,
  redirect: (context, state) async {
    final currentPath = state.uri.path;
    final currentUser = FirebaseAuth.instance.currentUser;
    final isLoggedIn = currentUser != null;
    final isAuthRoute =
        currentPath == Routes.login || currentPath == Routes.register;

    if (!isLoggedIn && _requiresAuth(currentPath)) {
      return Routes.login;
    }

    if (isLoggedIn && isAuthRoute) {
      return '/';
    }

    if (_requiresAdmin(currentPath)) {
      final email = currentUser?.email;
      if (email == null || email.isEmpty) {
        return Routes.login;
      }

      try {
        final userInfo = await _getUserRoleUseCase.getUserInfo(email);
        if (userInfo.role != 'admin') {
          return '/';
        }
      } catch (_) {
        return '/';
      }
    }

    return null;
  },
  routes: [
    GoRoute(
      name: Routes.login,
      path: '/login',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      name: Routes.logout,
      path: '/logout',
      builder: (context, state) => const LogoutView(),
    ),
    GoRoute(
      name: Routes.register,
      path: '/register',
      builder: (context, state) => const RegisterView(),
    ),
    // Ecommerce Routes
    GoRoute(
      name: Routes.ecommerceHome,
      path: '/',
      builder: (context, state) => const ECommerceHomeView(),
    ),
    GoRoute(
      name: Routes.itemView,
      path: '/ecommerce/item/:id',
      builder: (context, state) =>
          ECommerceItemView(id: state.pathParameters['id']!),
    ),
    GoRoute(
      name: Routes.yourBag,
      path: '/ecommerce/your-bag',
      builder: (context, state) => const YourBagView(),
    ),
    GoRoute(
      name: Routes.checkout,
      path: '/ecommerce/checkout',
      builder: (context, state) => const CheckoutView(),
    ),
    GoRoute(
      name: Routes.onboarding,
      path: '/onboarding',
      builder: (context, state) => const OnboardingView(),
    ),
    GoRoute(
      name: Routes.personalise,
      path: '/personalise',
      builder: (context, state) => const PersonaliseView(),
    ),
    GoRoute(
      name: Routes.subscription,
      path: '/subscription',
      builder: (context, state) => const SubscriptionView(),
    ),
    GoRoute(
      name: Routes.sectionABC,
      path: '/section-abc',
      builder: (context, state) => const SectionABCView(),
    ),
    GoRoute(
      name: Routes.productABC,
      path: '/product-abc',
      builder: (context, state) => const ProductABCView(),
    ),
    GoRoute(
      name: Routes.transactionList,
      path: '/ecommerce/transaction-list',
      builder: (context, state) => const TransactionListView(),
    ),
    // Administrator Routes
    GoRoute(
      name: Routes.productEdit,
      path: '/product-edit/:id',
      builder: (context, state) =>
          ProductEditView(productId: state.pathParameters['id']!),
    ),
    GoRoute(
      name: Routes.sectionEdit,
      path: '/section-edit/:id',
      builder: (context, state) =>
          SectionEditView(sectionId: state.pathParameters['id']!),
    ),
  ],
);

abstract class Routes {
  static const String onboarding = '/onboarding';
  static const String personalise = '/personalise';
  static const String subscription = '/subscription';

  // E-commerce routes
  static const String ecommerceHome = '/ecommerce/home';
  static const String itemView = '/ecommerce/item';
  static const String yourBag = '/ecommerce/your-bag';
  static const String checkout = '/ecommerce/checkout';
  static const String transactionList = '/ecommerce/transaction-list';

  // Navigation destinations
  static const String explore = '/explore';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String login = '/login';
  static const String register = '/register';
  static const String logout = '/logout';

  // ABC
  static const String sectionABC = '/section-abc';
  static const String productABC = '/product-abc';

  // Administrator routes
  static const String productEdit = '/product-edit';
  static const String sectionEdit = '/section-edit';
}
