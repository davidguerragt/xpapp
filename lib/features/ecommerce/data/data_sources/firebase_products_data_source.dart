import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/ecommerce/data/models/product_model.dart';

class FirebaseProductsDataSource {
  final FirebaseFirestore _firestore;

  FirebaseProductsDataSource({FirebaseFirestore? firestore})
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

  Future<String> postProduct(Map<String, dynamic> productData) async {
    try {
      final collectionRef = _firestore.collection('products');
      final docRef = await collectionRef.add(productData);
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir el producto: $e');
      throw Exception('Error al subir el producto');
    }
  }

  Future<String> updateProduct(Map<String, dynamic> productData) async {
    try {
      DocumentReference docRef = _firestore
          .collection('products')
          .doc(productData['id']);
      await docRef.update(productData);
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir el producto: $e');
      throw Exception('Error al subir el producto');
    }
  }
}
