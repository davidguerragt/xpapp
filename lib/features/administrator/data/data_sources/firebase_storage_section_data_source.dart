import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class FirebaseStorageSectionDataSource {
  final FirebaseStorage _firebaseStorage;

  FirebaseStorageSectionDataSource({FirebaseStorage? firebaseStorage})
    : _firebaseStorage = firebaseStorage ?? FirebaseStorage.instance;

  Future<String> uploadSectionImage(String sectionId, XFile imageFile) async {
    try {
      final storageRef = _firebaseStorage.ref().child(
        'sections/$sectionId.jpg',
      );
      final uploadTask = storageRef.putFile(File(imageFile.path));
      await uploadTask;
      final downloadUrl = await storageRef.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      throw Exception('Error uploading section image: $e');
    }
  }

  Future<String?> getSectionImageUrl(String sectionId) async {
    try {
      final storageRef = _firebaseStorage.ref().child(
        'sections/$sectionId.jpg',
      );
      return await storageRef.getDownloadURL();
    } catch (e) {
      throw Exception('Error getting section image URL: $e');
    }
  }
}
