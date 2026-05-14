import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/features/ecommerce/presentation/states/home_notifier.dart';

class ECommerceItemView extends ConsumerWidget {
  const ECommerceItemView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(children: [_ProductImagesSection()]),
        ),
      ),
    );
  }
}

class _ProductImagesSection extends ConsumerWidget {
  const _ProductImagesSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentBanner = ref.watch(bannerProvider);

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 214,
          child: PageView.builder(
            itemCount: 5,
            onPageChanged: (index) {
              ref.read(bannerProvider.notifier).state = index;
            },
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                color: Colors.blueGrey.shade100,
                child: const Center(
                  child: Icon(Icons.image, size: 50, color: Colors.lightBlue),
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
              5,
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
