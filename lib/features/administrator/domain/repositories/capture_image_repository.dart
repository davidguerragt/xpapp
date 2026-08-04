import 'package:image_picker/image_picker.dart';

abstract class CaptureImageRepository {
  Future<XFile?> captureImageFromCamera();
}
