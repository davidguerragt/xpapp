import 'package:image_picker/image_picker.dart';
import 'package:xpapp/features/administrator/domain/repositories/capture_image_repository.dart';
import 'package:xpapp/features/administrator/data/repositories/capture_image_repostory_imp.dart';

class CaptureImageUseCase {
  final CaptureImageRepository _captureImageRepository;

  CaptureImageUseCase({CaptureImageRepository? captureImageRepository})
    : _captureImageRepository =
          captureImageRepository ?? CaptureImageRepositoryImpl();

  Future<XFile?> call() async {
    return await _captureImageRepository.captureImageFromCamera();
  }
}
