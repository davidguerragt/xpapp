import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/features/ecommerce/domain/entities/product_entity.dart';
import 'package:xpapp/features/ecommerce/presentation/states/home_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/states/product_abc_notifier.dart';
import 'package:xpapp/features/ecommerce/presentation/widgets/appbar_widgets.dart';

class ProductABCView extends ConsumerStatefulWidget {
  const ProductABCView({super.key});

  @override
  ConsumerState<ProductABCView> createState() => _ProductABCViewState();
}

class _ProductABCViewState extends ConsumerState<ProductABCView> {
  @override
  void initState() {
    super.initState();
    // Disparamos la carga de todos los productos al entrar en la vista
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(homeProvider.notifier).loadAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarBackButton(),
        title: const Text('Product Management'),
        actions: const [_AddProductButton()],
      ),
      body: const SafeArea(child: _BodyWidget()),
    );
  }
}

class _AddProductButton extends ConsumerWidget {
  const _AddProductButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () => _showAddProductDialog(context, ref),
      icon: const Icon(Icons.add_business_rounded),
    );
  }

  void _showAddProductDialog(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final titleController = TextEditingController();
    final priceController = TextEditingController();
    final imageController = TextEditingController();
    final descController = TextEditingController();
    final sizesController = TextEditingController();
    final colorsController = TextEditingController();
    final sectionsController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Nuevo Producto'),
        content: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: 'Título'),
                  validator: (v) => v!.isEmpty ? 'Requerido' : null,
                ),
                TextFormField(
                  controller: priceController,
                  decoration: const InputDecoration(
                    labelText: 'Precio',
                    hintText: '0.00',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (v) => double.tryParse(v ?? '') == null
                      ? 'Precio inválido'
                      : null,
                ),
                TextFormField(
                  controller: imageController,
                  decoration: const InputDecoration(
                    labelText: 'Ruta Imagen (Asset)',
                  ),
                  validator: (v) => v!.isEmpty ? 'Requerido' : null,
                ),
                TextFormField(
                  controller: descController,
                  decoration: const InputDecoration(labelText: 'Descripción'),
                  maxLines: 2,
                  validator: (v) => v!.isEmpty ? 'Requerido' : null,
                ),
                const Divider(height: 30),
                TextFormField(
                  controller: sizesController,
                  decoration: const InputDecoration(
                    labelText: 'Tallas',
                    hintText: 'S, M, L (separadas por coma)',
                  ),
                ),
                TextFormField(
                  controller: colorsController,
                  decoration: const InputDecoration(
                    labelText: 'Colores',
                    hintText: 'Red, Blue (separados por coma)',
                  ),
                ),
                TextFormField(
                  controller: sectionsController,
                  decoration: const InputDecoration(
                    labelText: 'Secciones IDs',
                    hintText: '1, 2 (IDs de categorías)',
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (formKey.currentState?.validate() ?? false) {
                final newProduct = ProductEntity(
                  id: DateTime.now().toString(),
                  title: titleController.text,
                  price: double.parse(priceController.text),
                  image: imageController.text,
                  description: descController.text,
                  sizes: sizesController.text
                      .split(',')
                      .map((e) => e.trim())
                      .toList(),
                  colors: colorsController.text
                      .split(',')
                      .map((e) => e.trim())
                      .toList(),
                  sections: sectionsController.text
                      .split(',')
                      .map((e) => e.trim())
                      .toList(),
                );

                await ref
                    .read(productAbcProvider.notifier)
                    .saveProduct(newProduct);
                await ref.read(homeProvider.notifier).loadAllProducts();

                if (context.mounted) {
                  Navigator.pop(context);
                }
              }
            },
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }
}

class _BodyWidget extends ConsumerWidget {
  const _BodyWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allProducts = ref.watch(homeProvider).products;

    if (allProducts.isEmpty) {
      return const Center(child: Text('No hay productos registrados.'));
    }

    return ListView.separated(
      itemCount: allProducts.length,
      separatorBuilder: (_, _) => const Divider(),
      itemBuilder: (context, index) {
        final product = allProducts[index];
        return ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.shade200,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                product.image,
                errorBuilder: (_, _, _) => const Icon(Icons.broken_image),
              ),
            ),
          ),
          title: Text(
            product.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  _InfoTag(
                    label: '\$${product.price.toStringAsFixed(2)}',
                    color: Colors.green,
                  ),
                  const SizedBox(width: 5),
                  _InfoTag(
                    label: 'Sizes: ${product.sizes.length}',
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
          isThreeLine: true,
        );
      },
    );
  }
}

class _InfoTag extends StatelessWidget {
  final String label;
  final Color color;
  const _InfoTag({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
