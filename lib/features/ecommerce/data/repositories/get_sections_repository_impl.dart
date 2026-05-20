import 'package:xpapp/features/ecommerce/data/data_sources/get_sections_data_source.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/section_repository.dart';

class GetSectionsRepositoryImpl implements GetSectionsRepository {
  final GetSectionsDataSource _sectionsDataSource;

  GetSectionsRepositoryImpl(this._sectionsDataSource);

  @override
  Future<List<SectionEntity>> getSections() async {
    final sections = await _sectionsDataSource.getSections();
    return sections
        .map(
          (section) => SectionEntity(
            id: section['id'].toString(),
            title: section['name'] as String,
            description: '',
            image: '',
          ),
        )
        .toList();
  }
}
