import 'package:xpapp/features/administrator/data/data_sources/firebase_storage_product_data_source.dart';
import 'package:image_picker/image_picker.dart';

class AdminProductImageUploadUseCase {
  final FirebaseStorageProductDataSource _firebaseStorageProductDataSource;

  AdminProductImageUploadUseCase({
    FirebaseStorageProductDataSource? firebaseStorageProductDataSource,
  }) : _firebaseStorageProductDataSource =
           firebaseStorageProductDataSource ??
           FirebaseStorageProductDataSource();

  Future<void> uploadProductImage(String fileName, XFile image) async {
    await _firebaseStorageProductDataSource.uploadProductImage(fileName, image);
  }

  Future<XFile?> downloadProductImage(String fileName) async {
    return await _firebaseStorageProductDataSource.downloadProductImage(
      fileName,
    );
  }

  Future<void> deleteProductImage(String fileName) async {
    await _firebaseStorageProductDataSource.deleteProductImage(fileName);
  }
}
