import 'package:xpapp/features/administrator/domain/entities/admin_section_entity.dart';

abstract class AdminSectionRepository {
  Future<List<AdminSectionEntity>> getAdminSections();
  Future<void> addAdminSection(AdminSectionEntity section);
  Future<void> updateAdminSection(AdminSectionEntity section);
  Future<void> deleteAdminSection(String sectionId);
}
