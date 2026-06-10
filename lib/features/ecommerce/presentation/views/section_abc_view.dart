import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/features/ecommerce/presentation/states/home_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/widgets/appbar_widgets.dart';

class SectionABCView extends ConsumerWidget {
  const SectionABCView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBarBackButton(),
        title: const Text('Section ABC'),
        actions: [_AddSectionButton()],
      ),
      body: SafeArea(child: SingleChildScrollView(child: _BodyWidget())),
    );
  }
}

class _AddSectionButton extends ConsumerWidget {
  const _AddSectionButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => _showAddSectionDialog(context, ref),
      child: const Icon(Icons.add_card_rounded),
    );
  }

  void _showAddSectionDialog(BuildContext context, WidgetRef ref) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final imageController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Nueva Sección'),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'Título',
                    hintText: 'Ej: Colección de Verano',
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo requerido' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Descripción',
                    hintText: 'Breve descripción de la sección',
                  ),
                  maxLines: 2,
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo requerido' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: imageController,
                  decoration: const InputDecoration(
                    labelText: 'Ruta de la Imagen (Asset)',
                    hintText: 'Ej: assets/images/promocion.png',
                  ),
                  validator: (value) => value == null || value.isEmpty
                      ? 'La ruta de imagen es requerida'
                      : null,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  // Aquí llamarías al método de tu notifier para agregar la sección
                  // ref.read(homeProvider.notifier).addSection(
                  //   title: titleController.text,
                  //   description: descriptionController.text,
                  //   image: imageController.text,
                  // );

                  Navigator.pop(context);
                }
              },
              child: const Text('Guardar'),
            ),
          ],
        );
      },
    );
  }
}

class _BodyWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [_SectionListArea()]);
  }
}

class _SectionListArea extends ConsumerWidget {
  const _SectionListArea();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sections = ref.watch(homeProvider).sections;

    if (sections.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(child: Text('No hay secciones disponibles.')),
      );
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sections.length,
      itemBuilder: (context, index) {
        final section = sections[index];
        return ListTile(
          leading: const CircleAvatar(child: Icon(Icons.abc)),
          title: Text(section.title),
          subtitle: Text(section.description),
        );
      },
    );
  }
}
