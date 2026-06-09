import 'package:go_router/go_router.dart';
import 'package:xpapp/features/ecommerce/presentation/views/checkout_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/home_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/item_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/your_bag_view.dart';
import 'package:xpapp/features/login/presemtation/views/login_view.dart';
import 'package:xpapp/features/login/presemtation/views/register_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/personalise_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/subscription_view.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      name: Routes.login,
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      name: Routes.register,
      path: '/register',
      builder: (context, state) => const RegisterView(),
    ),
    // Ecommerce Routes
    GoRoute(
      name: Routes.ecommerceHome,
      path: '/ecommerce/home',
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

  // Navigation destinations
  static const String explore = '/explore';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String login = '/login';
  static const String register = '/';
}
