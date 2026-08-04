import 'package:xpapp/features/administrator/domain/entities/admin_section_entity.dart';
import 'package:xpapp/features/administrator/domain/repositories/admin_section_repository.dart';
import 'package:xpapp/features/administrator/data/data_sources/firebase_admin_section_data_source.dart';

class AdminSectionRepositoryImpl implements AdminSectionRepository {
  final FirebaseAdminSectionDataSource _adminSectionDataSource;

  AdminSectionRepositoryImpl({
    FirebaseAdminSectionDataSource? adminSectionDataSource,
  }) : _adminSectionDataSource =
           adminSectionDataSource ?? FirebaseAdminSectionDataSource();

  @override
  Future<List<AdminSectionEntity>> getAdminSections() async {
    final sections = await _adminSectionDataSource.getSections();
    return sections.map((section) {
      return AdminSectionEntity.fromModel(section);
    }).toList();
  }

  @override
  Future<AdminSectionEntity?> getAdminSectionById(String sectionId) async {
    final section = await _adminSectionDataSource.getSectionById(sectionId);
    return AdminSectionEntity.fromModel(section);
  }

  @override
  Future<void> addAdminSection(AdminSectionEntity section) async {
    await _adminSectionDataSource.addSection(section.toModel());
  }

  @override
  Future<void> updateAdminSection(AdminSectionEntity section) async {
    await _adminSectionDataSource.updateSection(section.toModel());
  }

  @override
  Future<void> deleteAdminSection(String sectionId) async {
    await _adminSectionDataSource.deleteSection(sectionId);
  }
}
