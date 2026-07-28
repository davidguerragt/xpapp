import 'package:image_picker/image_picker.dart';

abstract class PickImageRepository {
  Future<XFile?> pickImageFromGallery();
}
