import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xpapp/features/administrator/data/models/admin_product_model.dart';
import 'package:xpapp/core/consts/api_consts.dart';

class FirebaseAdminProductDataSource {
  final FirebaseFirestore _firestore;

  FirebaseAdminProductDataSource({FirebaseFirestore? firestore})
    : _firestore = firestore ?? FirebaseFirestore.instance;

  Future<AdminProductModel> getProductById(String id) async {
    final docRef = _firestore.collection(FireStoreCollections.products).doc(id);
    final docSnapshot = await docRef.get();

    if (docSnapshot.exists) {
      return AdminProductModel.fromJson(docSnapshot.data()!);
    } else {
      throw Exception('Product not found');
    }
  }

  Future<List<AdminProductModel>> getAllProducts() async {
    final collectionRef = _firestore.collection(FireStoreCollections.products);
    final result = await collectionRef.get();
    return result.docs
        .map((doc) => AdminProductModel.fromJson(doc.data()))
        .toList();
  }

  Future<String> addProduct(AdminProductModel productData) async {
    try {
      final collectionRef = _firestore.collection(
        FireStoreCollections.products,
      );
      final docRef = await collectionRef.add(productData.toJson());
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir el producto: $e');
      throw Exception('Error al subir el producto');
    }
  }

  Future<String> updateProduct(AdminProductModel productData) async {
    try {
      DocumentReference docRef = _firestore
          .collection(FireStoreCollections.products)
          .doc(productData.id);
      await docRef.update(productData.toJson());
      return docRef.id;
    } catch (e) {
      // ignore: avoid_print
      print('Error al subir el producto: $e');
      throw Exception('Error al subir el producto');
    }
  }

  Future<void> deleteProduct(String id) async {
    try {
      DocumentReference docRef = _firestore
          .collection(FireStoreCollections.products)
          .doc(id);
      await docRef.delete();
    } catch (e) {
      // ignore: avoid_print
      print('Error al eliminar el producto: $e');
      throw Exception('Error al eliminar el producto');
    }
  }
}
