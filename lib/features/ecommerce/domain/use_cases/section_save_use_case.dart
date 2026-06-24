import 'package:xpapp/features/ecommerce/data/repositories/section_repository_impl.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/section_repository.dart';

class SectionSaveUseCase {
  final SectionRepository _repository;

  SectionSaveUseCase({SectionRepository? repository})
    : _repository = repository ?? SectionRepositoryImpl();

  Future<String> call(SectionEntity section) async {
    return await _repository.saveSection(section);
  }
}
