import 'package:flutter_riverpod/legacy.dart';
import 'package:xpapp/features/administrator/domain/use_cases/admin_section_add_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/admin_section_del_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/admin_section_get_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/admin_section_upd_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/pick_image_use_case.dart';
import 'package:xpapp/features/administrator/domain/use_cases/capture_image_use_case.dart';
import 'package:xpapp/features/administrator/presentation/states/section_edit_state.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_section_entity.dart';

final sectionEditProvider =
    StateNotifierProvider.autoDispose<SectionEditNotifier, SectionEditState>(
      (ref) => SectionEditNotifier(),
    );

class SectionEditNotifier extends StateNotifier<SectionEditState> {
  final AdminSectionGetUseCase _getUseCase;
  final AdminSectionAddUseCase _addUseCase;
  final AdminSectionUpdUseCase _updateUseCase;
  final AdminSectionDelUseCase _deleteUseCase;
  final PickImageUseCase _pickImageUseCase;
  final CaptureImageUseCase _captureImageUseCase;

  SectionEditNotifier({
    AdminSectionGetUseCase? getUseCase,
    AdminSectionAddUseCase? addUseCase,
    AdminSectionUpdUseCase? updateUseCase,
    AdminSectionDelUseCase? deleteUseCase,
    PickImageUseCase? pickImageUseCase,
    CaptureImageUseCase? captureImageUseCase,
  }) : _getUseCase = getUseCase ?? AdminSectionGetUseCase(),
       _addUseCase = addUseCase ?? AdminSectionAddUseCase(),
       _updateUseCase = updateUseCase ?? AdminSectionUpdUseCase(),
       _deleteUseCase = deleteUseCase ?? AdminSectionDelUseCase(),
       _pickImageUseCase = pickImageUseCase ?? PickImageUseCase(),
       _captureImageUseCase = captureImageUseCase ?? CaptureImageUseCase(),
       super(SectionEditState.initial());

  Future<void> loadSection(String id) async {
    try {
      state = SectionEditState.loading(isLoading: true);
      final section = await _getUseCase.getAdminSectionById(id);
      if (section == null) {
        state = SectionEditState.error(message: 'Sección no encontrada');
        return;
      }
      state = SectionEditState.loaded(section: section);
    } catch (e) {
      state = SectionEditState.error(
        message: 'Error al cargar la sección: ${e.toString()}',
      );
    }
  }

  Future<void> addSection(AdminSectionEntity section) async {
    try {
      state = SectionEditState.saving(isSaving: true);
      await _addUseCase.addAdminSection(section);
      state = SectionEditState.saved(section: section);
    } catch (e) {
      state = SectionEditState.error(
        message: 'Error al guardar la sección: ${e.toString()}',
      );
    }
  }

  Future<void> updateSection(AdminSectionEntity section) async {
    try {
      state = SectionEditState.saving(isSaving: true);
      await _updateUseCase.updateAdminSection(section);
      state = SectionEditState.saved(section: section);
    } catch (e) {
      state = SectionEditState.error(
        message: 'Error al guardar la sección: ${e.toString()}',
      );
    }
  }

  Future<void> deleteSection(String id) async {
    try {
      state = SectionEditState.deleting(isDeleting: true);
      await _deleteUseCase.deleteAdminSection(id);
      state = SectionEditState.deleted();
    } catch (e) {
      state = SectionEditState.error(
        message: 'Error al eliminar la sección: ${e.toString()}',
      );
    }
  }

  Future<void> pickImage() async {
    try {
      state = SectionEditState.pickingImage(isPicking: true);
      final image = await _pickImageUseCase.call();
      if (image != null) {
        state = SectionEditState.imagePicked(image: image);
      } else {
        state = SectionEditState.error(
          message: 'No se seleccionó ninguna imagen',
        );
      }
    } catch (e) {
      state = SectionEditState.error(
        message: 'Error al seleccionar la imagen: ${e.toString()}',
      );
    }
  }

  Future<void> captureImage() async {
    try {
      state = SectionEditState.capturingImage(isCapturing: true);
      final image = await _captureImageUseCase.call();
      if (image != null) {
        state = SectionEditState.imageCaptured(image: image);
      } else {
        state = SectionEditState.error(message: 'No se capturó ninguna imagen');
      }
    } catch (e) {
      state = SectionEditState.error(
        message: 'Error al capturar la imagen: ${e.toString()}',
      );
    }
  }
}
