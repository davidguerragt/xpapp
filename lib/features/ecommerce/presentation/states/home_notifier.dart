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
          "id": "1",
          "title": "Amazing T-shirt",
          "price": "€ 12.00",
          "image": Assets.tshirt,
          "description":
              "The perfect t-shirt for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.",
          "sizes": ["XS", "S", "M", "L", "XL"],
          "colors": ["Black", "DarkGrey", "LightGrey", "White", "Green"],
        },
        {
          "id": "2",
          "title": "Fabolous Pants",
          "price": "€ 15.00",
          "image": Assets.pants,
          "description":
              "The perfect pants for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.",
          "sizes": ["36", "38", "40", "42", "44", "46"],
          "colors": ["Black", "DarkGrey", "LightGrey", "White"],
        },
        {
          "id": "3",
          "title": "Premium Boots",
          "price": "€ 60.00",
          "image": Assets.boots,
          "description":
              "The perfect boots for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% leather fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.",
          "sizes": ["38", "40", "42", "44", "46"],
          "colors": ["Black", "Yellow", "Grey", "Brown"],
        },
      ],
    },
    {
      'title': 'For this summer',
      'products': [
        {
          "id": "4",
          "title": "Swimming suit",
          "price": "€ 12.00",
          "image": Assets.swimmitSuit,
          "description":
              "The perfect swimming suit for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.",
          "sizes": ["XS", "S", "M", "L", "XL"],
          "colors": ["Black", "DarkGrey", "LightGrey", "White"],
        },
        {
          "id": "5",
          "title": "Portable pool",
          "price": "€ 15.00",
          "image": Assets.portablePool,
          "description":
              "The perfect portable pool for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.",
          "sizes": ["5x8 feet", "8x10 feet", "10x15 feet"],
          "colors": ["Blue", "Pink", "Yellow", "Green"],
        },
        {
          "id": "6",
          "title": "Ice box",
          "price": "€ 60.00",
          "image": Assets.icebox,
          "description":
              "The perfect ice box for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.",
          "sizes": ["5 liters", "10 liters", "15 liters"],
          "colors": ["Blue", "Pink", "Yellow", "Green"],
        },
        {
          "id": "7",
          "title": "Red Umbrella",
          "price": "€ 5.75",
          "image": Assets.umbrella,
          "description":
              "The perfect umbrella for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.",
          "sizes": ["S", "M", "L"],
          "colors": ["Red", "Pink", "Yellow", "Green"],
        },
      ],
    },
  ];
});
