import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';

abstract class SectionRepository {
  Future<List<SectionEntity>> getSections();
  Future<String> saveSection(SectionEntity section);
}
