import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_section_entity.dart';

part 'section_edit_state.freezed.dart';

@freezed
abstract class SectionEditState with _$SectionEditState {
  // Initial state
  factory SectionEditState.initial() = _Initial;

  // Loading state with a flag
  factory SectionEditState.loading({required bool isLoading}) = _Loading;
  factory SectionEditState.loaded({required AdminSectionEntity section}) =
      _Loaded;

  // Saving state with a flag
  factory SectionEditState.saving({required bool isSaving}) = _Saving;
  factory SectionEditState.saved({required AdminSectionEntity section}) =
      _Saved;

  // Deleting state with a flag
  factory SectionEditState.deleting({required bool isDeleting}) = _Deleting;
  factory SectionEditState.deleted() = _Deleted;

  // Picking image state with a flag
  factory SectionEditState.pickingImage({required bool isPicking}) =
      _PickingImage;
  factory SectionEditState.imagePicked({required Object image}) = _ImagePicked;

  // Capturing image state with a flag
  factory SectionEditState.capturingImage({required bool isCapturing}) =
      _CapturingImage;
  factory SectionEditState.imageCaptured({required Object image}) =
      _ImageCaptured;

  // Error state with a message
  factory SectionEditState.error({required String message}) = _Error;
}
