import 'package:image_picker/image_picker.dart';

class LocalCaptureImageDataSource {
  final ImagePicker _imagePicker;

  LocalCaptureImageDataSource({ImagePicker? imagePicker})
    : _imagePicker = imagePicker ?? ImagePicker();

  Future<XFile?> captureImageFromCamera() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.camera,
      );
      return image;
    } catch (e) {
      throw Exception('Error capturing image from camera: $e');
    }
  }
}
