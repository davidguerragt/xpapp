import 'package:image_picker/image_picker.dart';
import 'package:xpapp/features/administrator/data/data_sources/local_pick_image_data_source.dart';
import 'package:xpapp/features/administrator/domain/repositories/pick_image_repository.dart';

class PickImageRepositoryImpl implements PickImageRepository {
  final LocalProductoStorageDataSource _localDataSource;

  PickImageRepositoryImpl({LocalProductoStorageDataSource? localDataSource})
    : _localDataSource = localDataSource ?? LocalProductoStorageDataSource();

  @override
  Future<XFile?> pickImageFromGallery() async {
    final image = await _localDataSource.pickImageFromGallery();
    return image;
  }
}
