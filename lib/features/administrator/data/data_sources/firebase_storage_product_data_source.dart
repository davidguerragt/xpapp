import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageProductDataSource {
  final FirebaseStorage _firebaseStorage;

  FirebaseStorageProductDataSource({FirebaseStorage? firebaseStorage})
    : _firebaseStorage = firebaseStorage ?? FirebaseStorage.instance;

  Future<String> uploadProductImage(String filePath, String fileName) async {
    final ref = _firebaseStorage.ref().child('products/$fileName');
    final uploadTask = ref.putFile(File(filePath));
    final snapshot = await uploadTask;
    return await snapshot.ref.getDownloadURL();
  }
}
