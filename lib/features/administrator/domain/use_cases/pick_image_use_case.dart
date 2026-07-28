import 'package:image_picker/image_picker.dart';
import 'package:xpapp/features/administrator/domain/repositories/pick_image_repository.dart';
import 'package:xpapp/features/administrator/data/repositories/pick_image_repository_impl.dart';

class PickImageUseCase {
  final PickImageRepository _pickImageRepository;

  PickImageUseCase({PickImageRepository? pickImageRepository})
    : _pickImageRepository = pickImageRepository ?? PickImageRepositoryImpl();

  Future<XFile?> call() async {
    return await _pickImageRepository.pickImageFromGallery();
  }
}
