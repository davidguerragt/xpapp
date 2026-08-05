import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:xpapp/features/administrator/presentation/states/section_edit_notifier.dart';
import 'package:xpapp/features/administrator/presentation/states/section_edit_state.dart';
import 'package:xpapp/features/administrator/presentation/widgets/appbar_widgets.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_section_entity.dart';

class SectionEditView extends ConsumerWidget {
  final String sectionId;

  const SectionEditView({super.key, required this.sectionId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: const AdminAppBarBackButton(),
        title: const Text('Section Edit'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: _BodyWidget(sectionId: sectionId),
        ),
      ),
    );
  }
}

class _BodyWidget extends ConsumerWidget {
  final String sectionId;

  const _BodyWidget({required this.sectionId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sectionEditProvider);

    if (sectionId != 'new') {
      final content = state.when(
        // Define how to handle each state
        initial: () => const Center(child: CircularProgressIndicator()),
        loading: (isLoading) => isLoading
            ? const Center(child: CircularProgressIndicator())
            : const SizedBox.shrink(),
        loaded: (section) => _SectionForm(section: section),
        saving: (isSaving) => isSaving
            ? const Center(child: CircularProgressIndicator())
            : const SizedBox.shrink(),
        saved: (section) => Text('Saved section: ${section.name}'),
        deleting: (isDeleting) => isDeleting
            ? const Center(child: CircularProgressIndicator())
            : const SizedBox.shrink(),
        deleted: () => const Text('Section deleted successfully.'),

        pickingImage: (isPicking) => isPicking
            ? const Center(child: CircularProgressIndicator())
            : const SizedBox.shrink(),

        imagePicked: (image) => Text('Image picked: $image'),

        capturingImage: (isCapturing) => isCapturing
            ? const Center(child: CircularProgressIndicator())
            : const SizedBox.shrink(),
        imageCaptured: (image) => Text('Image captured: $image'),

        error: (message) => Text('Error: $message'),
      );

      return Center(child: content);
    } else {
      return const Center(child: Text('Creating new section'));
    }
  }
}

// ignore: must_be_immutable
class _SectionForm extends ConsumerWidget {
  final AdminSectionEntity section;

  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  XFile? _imageFile;
  late TextEditingController _imageUrlController;

  _SectionForm({required this.section}) {
    _nameController = TextEditingController(text: section.name);
    _descriptionController = TextEditingController(text: section.description);
    _imageFile = section.imageFile;
    _imageUrlController = TextEditingController(text: section.imageUrl);
  }

  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _imageUrlController.dispose();
  }

  // const _SectionForm({super.key, required this.section});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: _imageFile != null
                ? Image.file(File(_imageFile!.path), fit: BoxFit.cover)
                : _imageUrlController.text.isNotEmpty
                ? (_imageUrlController.text.contains('assets')
                      ? Image.asset(
                          _imageUrlController.text,
                          fit: BoxFit.contain,
                        )
                      : Image.network(
                          _imageUrlController.text,
                          fit: BoxFit.cover,
                        ))
                : Center(child: Text('No Image')),
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Section Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _descriptionController,
            decoration: const InputDecoration(
              labelText: 'Section Description',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
