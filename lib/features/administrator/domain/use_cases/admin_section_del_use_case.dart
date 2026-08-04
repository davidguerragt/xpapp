import 'package:xpapp/features/administrator/data/repositories/admin_section_repository_impl.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_section_repository.dart';

class AdminSectionDelUseCase {
  final AdminSectionRepository _repository;

  AdminSectionDelUseCase({AdminSectionRepository? repository})
    : _repository = repository ?? AdminSectionRepositoryImpl();

  Future<void> deleteAdminSection(String sectionId) async {
    await _repository.deleteAdminSection(sectionId);
  }
}
