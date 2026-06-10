import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';

class HomeState {
  final List<SectionEntity> sections;
  final List<ProductEntity> products;

  const HomeState({this.sections = const [], this.products = const []});

  HomeState copyWith({
    List<SectionEntity>? sections,
    List<ProductEntity>? products,
  }) {
    return HomeState(
      sections: sections ?? this.sections,
      products: products ?? this.products,
    );
  }
}
