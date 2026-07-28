import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
// import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:xpapp/core/consts/assets.dart';

class FirebaseStorageProductDataSource {
  final FirebaseStorage _firebaseStorage;

  FirebaseStorageProductDataSource({FirebaseStorage? firebaseStorage})
    : _firebaseStorage = firebaseStorage ?? FirebaseStorage.instance;

  Future<String> uploadProductImage(String fileName, XFile imageFile) async {
    final ref = _firebaseStorage.ref().child('products/$fileName');
    final uploadTask = ref.putFile(File(imageFile.path));
    final snapshot = await uploadTask;
    return await snapshot.ref.getDownloadURL();
  }

  Future<String?> getProductImageUrl(String fileName) async {
    final ref = _firebaseStorage.ref().child('products/$fileName');
    try {
      return await ref.getDownloadURL();
    } catch (e) {
      throw Exception('Error getting product image URL: $e');
    }
  }

  Future<XFile?> downloadProductImage(String fileName) async {
    if (fileName.contains('assets')) {
      return XFile(fileName);
    }
    final ref = _firebaseStorage.ref().child('products/$fileName');
    try {
      final url = await ref.getDownloadURL();
      final response = await HttpClient().getUrl(Uri.parse(url));
      final bytes = await response.close().then(
        (res) => res.fold<List<int>>([], (a, b) => a..addAll(b)),
      );
      final tempDir = Directory.systemTemp;
      final tempFile = File('${tempDir.path}/$fileName');
      await tempFile.writeAsBytes(bytes);
      return XFile(tempFile.path);
    } catch (e) {
      throw Exception('Error downloading product image: $e');
    }
  }

  Future<void> deleteProductImage(String fileName) async {
    final ref = _firebaseStorage.ref().child('products/$fileName');
    try {
      await ref.delete();
    } catch (e) {
      throw Exception('Error deleting product image: $e');
    }
  }
}
