import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';
import 'package:xpapp/features/ecommerce/domain/repositories/section_repository.dart';

class GetSectionsUseCase {
  final GetSectionsRepository _repository;

  GetSectionsUseCase(this._repository);

  Future<List<SectionEntity>> getSections() async {
    return await _repository.getSections();
  }
}
