import 'package:image_picker/image_picker.dart';
import 'package:xpapp/features/administrator/data/data_sources/local_capture_image_data_source.dart';
import 'package:xpapp/features/administrator/domain/repositories/capture_image_repository.dart';

class CaptureImageRepositoryImpl implements CaptureImageRepository {
  final LocalCaptureImageDataSource _localDataSource;

  CaptureImageRepositoryImpl({LocalCaptureImageDataSource? localDataSource})
    : _localDataSource = localDataSource ?? LocalCaptureImageDataSource();

  @override
  Future<XFile?> captureImageFromCamera() async {
    final image = await _localDataSource.captureImageFromCamera();
    return image;
  }
}
