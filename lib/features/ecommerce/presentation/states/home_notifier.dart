import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/core/navigation/assets.dart';

final bottomNavProvider = StateProvider<int>((ref) => 0);

final bannerProvider = StateProvider<int>((ref) => 0);

final sectionsProvider = Provider<List<Map<String, dynamic>>>((ref) {
  return [
    {
      'title': 'Perfect for you',
      'products': [
        {
          "title": "Amazing T-shirt",
          "price": "€ 12.00",
          "image": Assets.tshirt,
        },
        {"title": "Fabolous Pants", "price": "€ 15.00", "image": Assets.pants},
        {"title": "Premium Boots", "price": "€ 60.00", "image": Assets.boots},
      ],
    },
    {
      'title': 'For this summer',
      'products': [
        {
          "title": "Swimming suit",
          "price": "€ 12.00",
          "image": Assets.swimmitSuit,
        },
        {
          "title": "Portable pool",
          "price": "€ 15.00",
          "image": Assets.portablePool,
        },
        {"title": "Ice box", "price": "€ 60.00", "image": Assets.icebox},
      ],
    },
  ];
});
