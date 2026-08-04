import 'package:xpapp/features/administrator/data/repositories/admin_section_repository_impl.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_section_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_section_repository.dart';

class AdminSectionAddUseCase {
  final AdminSectionRepository _repository;

  AdminSectionAddUseCase({AdminSectionRepository? repository})
    : _repository = repository ?? AdminSectionRepositoryImpl();

  Future<void> addAdminSection(AdminSectionEntity section) async {
    await _repository.addAdminSection(section);
  }
}
