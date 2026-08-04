import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';

class HomeState {
  final List<SectionEntity> sections;
  final List<ProductEntity> products;
  final int imageVersion;

  const HomeState({
    this.sections = const [],
    this.products = const [],
    this.imageVersion = 0,
  });

  HomeState copyWith({
    List<SectionEntity>? sections,
    List<ProductEntity>? products,
    int? imageVersion,
  }) {
    return HomeState(
      sections: sections ?? this.sections,
      products: products ?? this.products,
      imageVersion: imageVersion ?? this.imageVersion,
    );
  }
}
