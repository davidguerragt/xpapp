import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/ecommerce/data/models/product_model.dart';

class FirebaseGetProductsDataSource {
  final FirebaseFirestore _firestore;

  FirebaseGetProductsDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<List<ProductModel>> getProductsBySection(int section) async {
    final collectionRef = _firestore.collection('products');
    final query = collectionRef.where(
      'sections',
      arrayContains: section.toString(),
    );
    final result = await query.get();
    return result.docs.map((doc) => ProductModel.fromJson(doc.data())).toList();
  }

  Future<List<ProductModel>> getAllProducts() async {
    final collectionRef = _firestore.collection('products');
    final result = await collectionRef.get();
    return result.docs.map((doc) => ProductModel.fromJson(doc.data())).toList();
  }
}
