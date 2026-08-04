import 'package:xpapp/features/administrator/data/repositories/admin_section_repository_impl.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_section_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_section_repository.dart';

class AdminSectionUpdUseCase {
  final AdminSectionRepository _repository;

  AdminSectionUpdUseCase({AdminSectionRepository? repository})
    : _repository = repository ?? AdminSectionRepositoryImpl();

  Future<void> updateAdminSection(AdminSectionEntity section) async {
    await _repository.updateAdminSection(section);
  }
}
