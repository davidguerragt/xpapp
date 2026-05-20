import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';

abstract class GetSectionsRepository {
  Future<List<SectionEntity>> getSections();
}
