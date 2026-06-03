import 'package:xpapp/core/consts/assets.dart';
import 'package:xpapp/features/ecommerce/data/models/product_model.dart';

class GetProductsDataSource {
  Future<List<ProductModel>> getProductsBySection(int section) async {
    // Simulate fetching products by section from a data source
    await Future.delayed(Duration(seconds: 1));
    List<ProductModel> products = [];

    if (section == 1) {
      products = [
        ProductModel(
          id: '1',
          title: 'Amazing T-shirt',
          price: 12.00,
          image: Assets.tshirt,
          description:
              'The perfect t-shirt for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['XS', 'S', 'M', 'L', 'XL'],
          colors: ['Black', 'DarkGrey', 'LightGrey', 'White', 'Green'],
        ),
        ProductModel(
          id: '2',
          title: 'Fabolous Pants',
          price: 15.00,
          image: Assets.pants,
          description:
              'The perfect pants for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['36', '38', '40', '42', '44', '46'],
          colors: ['Black', 'DarkGrey', 'LightGrey', 'White'],
        ),
        ProductModel(
          id: '3',
          title: 'Premium Boots',
          price: 60.00,
          image: Assets.boots,
          description:
              'The perfect boots for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% leather fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['38', '40', '42', '44', '46'],
          colors: ['Black', 'Yellow', 'Grey', 'Brown'],
        ),
      ];
    }

    if (section == 2) {
      products = [
        ProductModel(
          id: '4',
          title: 'Swimming suit',
          price: 12.00,
          image: Assets.swimmitSuit,
          description:
              'The perfect swimming suit for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['XS', 'S', 'M', 'L', 'XL'],
          colors: ['Black', 'DarkGrey', 'LightGrey', 'White'],
        ),
        ProductModel(
          id: '5',
          title: 'Portable pool',
          price: 15.00,
          image: Assets.portablePool,
          description:
              'The perfect portable pool for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['5x8 feet', '8x10 feet', '10x15 feet'],
          colors: ['Blue', 'Pink', 'Yellow', 'Green'],
        ),
        ProductModel(
          id: '6',
          title: 'Ice box',
          price: 60.00,
          image: Assets.icebox,
          description:
              'The perfect ice box for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['5 liters', '10 liters', '15 liters'],
          colors: ['Blue', 'Pink', 'Yellow', 'Green'],
        ),
        ProductModel(
          id: '7',
          title: 'Red Umbrella',
          price: 5.75,
          image: Assets.umbrella,
          description:
              'The perfect umbrella for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['S', 'M', 'L'],
          colors: ['Red', 'Pink', 'Yellow', 'Green'],
        ),
      ];
    }

    if (section == 3) {
      products = [
        ProductModel(
          id: '8',
          title: 'Sunglasses',
          price: 12.00,
          image: Assets.sunglasses,
          description:
              'The perfect sunglasses for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['One size'],
          colors: ['Black', 'DarkGrey', 'LightGrey', 'White'],
        ),
        ProductModel(
          id: '9',
          title: 'Hat',
          price: 15.00,
          image: Assets.hat,
          description:
              'The perfect hat for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['S', 'M', 'L'],
          colors: ['Black', 'DarkGrey', 'LightGrey', 'White'],
        ),
      ];
    }

    if (section == 4) {
      products = [
        ProductModel(
          id: '10',
          title: 'Beach Towel',
          price: 12.00,
          image: Assets.beachTowel,
          description:
              'The perfect beach towel for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['One size'],
          colors: ['Blue', 'Pink', 'Yellow', 'Green'],
        ),
        ProductModel(
          id: '11',
          title: 'Beach Ball',
          price: 15.00,
          image: Assets.beachBall,
          description:
              'The perfect beach ball for when you want to feel comfortable but still stylish. Amazing for all ocasions.  Made of 100% cotton fabric in four colors.  Its modern style gives a lighter look to the outfit.  Perfect for the warmest days.',
          sizes: ['One size'],
          colors: ['Blue', 'Pink', 'Yellow', 'Green'],
        ),
      ];
    }

    return products;
  }
}
