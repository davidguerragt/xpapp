import 'package:xpapp/core/navigation/assets.dart';

class GetSectionsDataSource {
  Future<List<Map<String, dynamic>>> getSections() async {
    // Simulate fetching sections from an API or database
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return [
      {
        'id': 1,
        'name': 'Perfect for you',
        'description': 'Find the perfect items for your needs',
        'image': Assets.perfectForYouSection,
      },
      {
        'id': 2,
        'name': 'For this summer',
        'description': 'Stay cool this summer',
        'image': Assets.forThisSummerSection,
      },
      {
        'id': 3,
        'name': 'New arrivals',
        'description': 'Check out our latest products',
        'image': Assets.newArrivalsSection,
      },
      {
        'id': 4,
        'name': 'Best sellers',
        'description': 'Popular items everyone loves',
        'image': Assets.bestSellersSection,
      },
    ];
  }
}
