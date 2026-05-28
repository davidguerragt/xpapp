import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/presentation/states/home_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/widgets/appbar_widgets.dart';

class ECommerceHomeView extends ConsumerWidget {
  const ECommerceHomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: AppBarSearchButton(),
        actions: [AppbarWidgets()],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [_MainCarrouselSection(), _SuggerencesSection()],
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
                  : 'assets/placeholder.png';

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
  const _ProductSection({required this.title, required this.products});

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
                  onTap: () => router.goNamed(
                    Routes.itemView,
                    pathParameters: {'id': product.id},
                  ),
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
                            child: Image.asset(
                              product.image,
                              fit: BoxFit.cover,
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

    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      onTap: (index) {
        ref.read(bottomNavProvider.notifier).state = index;
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: 'Categories',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Stores'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
