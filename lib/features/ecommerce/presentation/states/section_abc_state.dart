import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/ecommerce/domain/entities/section_entity.dart';

part 'section_abc_state.freezed.dart';

@freezed
class SectionAbcState with _$SectionAbcState {
  // initial
  const factory SectionAbcState.initial() = _Initial;

  // loading
  const factory SectionAbcState.loading({required bool isLoading}) = _Loading;
  const factory SectionAbcState.loaded({
    required List<SectionEntity> sections,
  }) = _Loaded;

  // selecting
  const factory SectionAbcState.selecting({required bool isSelecting}) =
      _Selecting;
  const factory SectionAbcState.selected({required SectionEntity section}) =
      _Selected;

  // saving
  const factory SectionAbcState.saving({required bool isSaving}) = _Saving;
  const factory SectionAbcState.saved({required SectionEntity section}) =
      _Saved;

  // error
  const factory SectionAbcState.error({required String error}) = _Error;
}
