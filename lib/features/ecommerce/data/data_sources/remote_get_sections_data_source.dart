import 'package:xpapp/core/navigation/assets.dart';
import 'package:xpapp/features/ecommerce/data/models/section_model.dart';

class GetSectionsDataSource {
  Future<List<SectionModel>> getSections() async {
    // Simulate fetching sections from an API or database
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return [
      SectionModel(
        id: '1',
        title: 'Perfect for you',
        description: 'Find the perfect items for your needs',
        image: Assets.perfectForYouSection,
      ),
      SectionModel(
        id: '2',
        title: 'For this summer',
        description: 'Stay cool this summer',
        image: Assets.forThisSummerSection,
      ),
      SectionModel(
        id: '3',
        title: 'New arrivals',
        description: 'Check out our latest products',
        image: Assets.newArrivalsSection,
      ),
      SectionModel(
        id: '4',
        title: 'Best sellers',
        description: 'Popular items everyone loves',
        image: Assets.bestSellersSection,
      ),
    ];
  }
}
