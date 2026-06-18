import 'package:xpapp/features/ecommerce/data/data_sources/firebase_sections_data_source.dart';
//import 'package:xpapp/features/ecommerce/data/data_sources/remote_get_sections_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/section_repository.dart';

class GetSectionsRepositoryImpl implements GetSectionsRepository {
  //final GetSectionsDataSource _sectionsDataSource;
  final FirebaseSectionsDataSource _sectionsDataSource;

  GetSectionsRepositoryImpl({FirebaseSectionsDataSource? sectionsDataSource})
    : _sectionsDataSource = sectionsDataSource ?? FirebaseSectionsDataSource();

  @override
  Future<List<SectionEntity>> getSections() async {
    final sections = await _sectionsDataSource.getSections();

    // ignore: avoid_print
    print('Sections: $sections');
    return sections.map(SectionEntity.fromModel).toList();
  }
}
