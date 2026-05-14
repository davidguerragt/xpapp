import 'package:go_router/go_router.dart';
import 'package:xpapp/features/ecommerce/presentation/views/home_view.dart';
import 'package:xpapp/features/ecommerce/presentation/views/item_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/personalise_view.dart';
import 'package:xpapp/features/onboarding/presentation/views/subscription_view.dart';

final router = GoRouter(
  routes: [
    // Ecommerce Routes
    GoRoute(
      name: Routes.ecommerceHome,
      path: '/',
      builder: (context, state) => const ECommerceHomeView(),
    ),
    GoRoute(
      name: Routes.ecommerceItem,
      path: '/ecommerce/item',
      builder: (context, state) => const ECommerceItemView(),
    ),
    // OnBoarding Routes
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
  static const String ecommerceItem = '/ecommerce/item';

  // Navigation destinatios
  static const String explore = '/explore';
  static const String categories = '/categories';
  static const String stores = '/stores';
  static const String profile = '/profile';

  //
}
