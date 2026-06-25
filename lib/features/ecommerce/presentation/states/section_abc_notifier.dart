import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';
import 'package:xpapp/features/ecommerce/domain/use_cases/section_save_use_case.dart';
import 'package:xpapp/features/ecommerce/presentation/states/section_abc_state.dart';

final sectionAbcProvider =
    StateNotifierProvider<SectionAbcNotifier, SectionAbcState>(
      (ref) => SectionAbcNotifier(),
    );

class SectionAbcNotifier extends StateNotifier<SectionAbcState> {
  final SectionSaveUseCase _sectionSaveUseCase;

  SectionAbcNotifier({SectionSaveUseCase? sectionSaveUseCase})
    : _sectionSaveUseCase = sectionSaveUseCase ?? SectionSaveUseCase(),
      super(SectionAbcState.initial());

  Future<String> saveSection(SectionEntity section) async {
    state = SectionAbcState.saving(isSaving: true);
    final response = await _sectionSaveUseCase.call(section);

    if (response.toLowerCase().contains('error')) {
      state = SectionAbcState.error(error: response);
      return response;
    }

    state = SectionAbcState.saved(section: section);
    return response;
  }
}
