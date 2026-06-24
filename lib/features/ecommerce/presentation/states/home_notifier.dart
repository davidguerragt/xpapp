import 'package:flutter_riverpod/legacy.dart';
//import 'package:xpapp/features/ecommerce/data/data_sources/firebase_get_products_data_source.dart';
//import 'package:xpapp/features/ecommerce/data/data_sources/remote_get_products_data_source.dart';
//import 'package:xpapp/features/ecommerce/data/data_sources/remote_get_sections_data_source.dart';
import 'package:xpapp/features/ecommerce/data/repositories/products_repository_impl.dart';
import 'package:xpapp/features/ecommerce/data/repositories/section_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/get_productos_use_case.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/get_sections_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/home_state.dart';

final bottomNavProvider = StateProvider<int>((ref) => 0);
final bannerProvider = StateProvider<int>((ref) => 0);
final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(
    //GetProductsUseCase(GetProductsRepositoryImpl(GetProductsDataSource())),
    GetProductsUseCase(
      //GetProductsRepositoryImpl(FirebaseGetProductsDataSource()),
      ProductsRepositoryImpl(),
    ),
    GetSectionsUseCase(SectionRepositoryImpl()),
  )..loadSections(),
);

class HomeNotifier extends StateNotifier<HomeState> {
  final GetProductsUseCase _getProductosUseCase;
  final GetSectionsUseCase _getSectionsUseCase;

  HomeNotifier(this._getProductosUseCase, this._getSectionsUseCase)
    : super(const HomeState());

  Future<void> loadSections() async {
    final sectionEntities = await _getSectionsUseCase.getSections();

    final sectionsWithProducts = await Future.wait(
      sectionEntities.map((section) async {
        final products = await _getProductosUseCase.getProductsBySection(
          int.parse(section.id),
        );
        return section.copyWith(products: products);
      }),
    );

    state = state.copyWith(sections: sectionsWithProducts, products: []);
  }

  Future<void> loadProductsBySection(int sectionId) async {
    final products = await _getProductosUseCase.getProductsBySection(sectionId);
    final updatedSections = state.sections.map((section) {
      if (int.parse(section.id) == sectionId) {
        return section.copyWith(products: products);
      }
      return section;
    }).toList();
    state = state.copyWith(sections: updatedSections, products: []);
  }

  Future<void> loadAllProducts() async {
    final products = await _getProductosUseCase.getAllProducts();
    state = state.copyWith(products: products);
  }

  void addProduct(ProductEntity product) {
    state = state.copyWith(products: [...state.products, product]);
  }

  void addSection(SectionEntity section) {
    state = state.copyWith(
      sections: [...state.sections, section],
      products: [],
    );
  }

  void updateSelectedSize(String size) {}

  void updateSelectedColor(String color) {}
}
