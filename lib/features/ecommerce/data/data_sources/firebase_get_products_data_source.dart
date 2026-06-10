import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/ecommerce/data/models/product_model.dart';

class FirebaseGetProductsDataSource {
  final FirebaseFirestore _firestore;

  FirebaseGetProductsDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<List<ProductModel>> getProducts() async {
    final productsResult = await _firestore.collection('products').get();
    return productsResult.docs
        .map((doc) => ProductModel.fromJson(doc.data()))
        .toList();
  }
}
