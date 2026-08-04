import 'package:xpapp/features/administrator/data/repositories/admin_section_repository_impl.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_section_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_section_repository.dart';

class AdminSectionGetUseCase {
  final AdminSectionRepository _repository;

  AdminSectionGetUseCase({AdminSectionRepository? repository})
    : _repository = repository ?? AdminSectionRepositoryImpl();

  Future<List<AdminSectionEntity>> getAllSections() async {
    return await _repository.getAdminSections();
  }

  Future<AdminSectionEntity?> getAdminSectionById(String id) async {
    return await _repository.getAdminSectionById(id);
  }
}
