import 'package:image_picker/image_picker.dart';

class LocalProductoStorageDataSource {
  final ImagePicker _imagePicker;

  LocalProductoStorageDataSource({ImagePicker? imagePicker})
    : _imagePicker = imagePicker ?? ImagePicker();

  Future<XFile?> pickImageFromGallery() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      return image;
    } catch (e) {
      throw Exception('Error picking image from gallery: $e');
    }
  }
}
