import 'package:xpapp/features/ecommerce/data/data_sources/firebase_sections_data_source.dart';
import 'package:xpapp/features/ecommerce/data/models/section_model.dart';
//import 'package:xpapp/features/ecommerce/data/data_sources/remote_get_sections_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/section_repository.dart';

class SectionRepositoryImpl implements SectionRepository {
  //final GetSectionsDataSource _sectionsDataSource;
  final FirebaseSectionsDataSource _sectionDataSource;

  SectionRepositoryImpl({FirebaseSectionsDataSource? sectionsDataSource})
    : _sectionDataSource = sectionsDataSource ?? FirebaseSectionsDataSource();

  @override
  Future<List<SectionEntity>> getSections() async {
    final sections = await _sectionDataSource.getSections();

    // ignore: avoid_print
    print('Sections: $sections');
    return sections.map(SectionEntity.fromModel).toList();
  }

  @override
  Future<String> saveSection(SectionEntity section) async {
    final SectionModel model = SectionModel.fromEntity(section);
    return _sectionDataSource.postSection(model);
  }
}
