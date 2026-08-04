import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/consts/assets.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/presentation/states/home_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/states/your_bag_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/widgets/appbar_widgets.dart';
import 'package:xpapp/features/login/presemtation/states/login_notifier.dart';
import 'package:xpapp/features/login/presemtation/states/login_state.dart';

class ECommerceHomeView extends ConsumerStatefulWidget {
  const ECommerceHomeView({super.key});

  @override
  ConsumerState<ECommerceHomeView> createState() => _ECommerceHomeViewState();
}

class _ECommerceHomeViewState extends ConsumerState<ECommerceHomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeProvider.notifier).loadSections();
    });
  }

  @override
  Widget build(BuildContext context) {
    final bagProductsNumber = ref.watch(yourBagProvider).bagProducts.length;
    final loginState = ref.watch(loginProvider);
    if (loginState is LoginInitialState) {
      Future.microtask(() {
        ref.read(loginProvider.notifier).isLoggedIn();
      });
    }
    final activeSession =
        loginState is LoginSuccessState ||
        (loginState is LoginLoggedInState && loginState.isLoggedIn) ||
        (loginState is LoginAdminState && loginState.isAdmin);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: AppBarSearchButton(),
        actions: [
          AppbarWidgets(
            cartProductsNumber: bagProductsNumber,
            activeSession: activeSession,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                _WelcomeGreeting(),
                _MainCarrouselSection(),
                _SuggerencesSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _BottomButtonsBar(),
    );
  }
}

class _MainCarrouselSection extends ConsumerWidget {
  const _MainCarrouselSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentBanner = ref.watch(bannerProvider);
    final homeState = ref.watch(homeProvider);
    final sections = homeState.sections;

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 214,
          child: PageView.builder(
            itemCount: sections.isNotEmpty ? sections.length : 1,
            onPageChanged: (index) {
              ref.read(bannerProvider.notifier).state = index;
            },
            itemBuilder: (context, index) {
              final section = sections.isNotEmpty ? sections[index] : null;
              final imageAsset = section != null && section.image.isNotEmpty
                  ? section.image
                  : Assets.placeholder;

              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              );
            },
          ),
        ),

        // INDICATORS
        Positioned(
          bottom: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              sections.isNotEmpty ? sections.length : 1,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: currentBanner == index ? 8 : 6,
                height: currentBanner == index ? 8 : 6,
                decoration: BoxDecoration(
                  color: currentBanner == index
                      ? Colors.blue
                      : Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SuggerencesSection extends ConsumerWidget {
  const _SuggerencesSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);
    final sections = homeState.sections;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        ...sections.map(
          (section) => section.products.isNotEmpty
              ? _ProductSection(
                  title: section.title,
                  products: section.products,
                  imageVersion: homeState.imageVersion,
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _ProductSection extends ConsumerWidget {
  final String title;
  final List<ProductEntity> products;
  final int imageVersion;
  const _ProductSection({
    required this.title,
    required this.products,
    required this.imageVersion,
  });

  String _withCacheBuster(String imageUrl) {
    final separator = imageUrl.contains('?') ? '&' : '?';
    return '$imageUrl${separator}v=$imageVersion';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "See more",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.indigoAccent,
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 189,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(18),
                  onTap: () => {
                    ref.read(selectedProductProvider.notifier).state = product,
                    ref.read(selectedSizeProvider.notifier).state =
                        product.sizes.isNotEmpty ? product.sizes.first : null,
                    ref.read(selectedColorProvider.notifier).state =
                        product.colors.isNotEmpty ? product.colors.first : null,
                    router.goNamed(
                      Routes.itemView,
                      pathParameters: {'id': product.id},
                    ),
                  },
                  child: Container(
                    width: 190,
                    margin: const EdgeInsets.only(right: 14),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // IMAGE
                        Expanded(
                          child: SizedBox(
                            width: 200,
                            height: 120,
                            child: product.image.contains('http')
                                ? Image.network(
                                    _withCacheBuster(product.image),
                                    key: ValueKey(
                                      '${product.id}-${product.image}-$imageVersion',
                                    ),
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, _, _) =>
                                        const Icon(Icons.broken_image),
                                  )
                                : Image.asset(
                                    product.image,
                                    fit: BoxFit.cover,
                                    errorBuilder: (_, _, _) =>
                                        const Icon(Icons.broken_image),
                                  ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),

                              const SizedBox(height: 6),

                              Text(
                                "\$ ${product.price}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _BottomButtonsBar extends ConsumerWidget {
  const _BottomButtonsBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavProvider);
    final loginState = ref.watch(loginProvider);
    final isAdmin =
        (loginState is LoginAdminState && loginState.isAdmin) ||
        (loginState is LoginSuccessState && loginState.user.role == 'admin');

    void handleNavigation(int index) {
      if (!isAdmin) {
        return;
      }

      ref.read(bottomNavProvider.notifier).state = index;
      switch (index) {
        case 0:
          router.goNamed(Routes.ecommerceHome);
          break;
        case 1:
          router.goNamed(Routes.sectionABC);
          break;
        case 2:
          // router.goNamed(Routes.productEdit);
          router.goNamed(Routes.productABC);
          break;
        case 3:
          router.goNamed(Routes.login);
          break;
      }
    }

    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      onTap: isAdmin ? handleNavigation : null,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: isAdmin ? Colors.blue : Colors.grey,
      unselectedItemColor: isAdmin ? Colors.blue : Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Sections'),
        BottomNavigationBarItem(
          icon: Icon(Icons.label),
          activeIcon: Icon(Icons.label_important),
          label: 'Products',
          tooltip: 'Products',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}

class _WelcomeGreeting extends ConsumerWidget {
  const _WelcomeGreeting();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);

    String userName = 'Guest';

    if (loginState is LoginSuccessState) {
      userName = (loginState.userInfo?.fullName.isNotEmpty ?? false)
          ? loginState.userInfo!.fullName
          : loginState.user.email.split('@')[0];
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Welcome!', style: TextStyle(fontSize: 12, color: Colors.grey)),
          const SizedBox(height: 4),
          Text(
            userName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
