import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/widgets/gemeral_widgets.dart';
import 'package:xpapp/features/administrator/domain/entities/admin_product_entity.dart';
import 'package:xpapp/features/administrator/presentation/states/product_edit_notifier.dart';
import 'package:xpapp/features/administrator/presentation/states/product_edit_state.dart';

class ProductEditView extends ConsumerWidget {
  final String productId;
  const ProductEditView({super.key, required this.productId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text('Product Edit'),
          ],
        ),
      ),
      body: Column(children: [_BodyWidget(productId: productId)]),
    );
  }
}

class _BodyWidget extends ConsumerWidget {
  final String productId;
  const _BodyWidget({required this.productId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SafeArea(child: _ProductEditFormStateful(productId: productId)),
      ],
    );
  }
}

class _ProductEditFormStateful extends ConsumerStatefulWidget {
  final String productId;
  const _ProductEditFormStateful({required this.productId});

  @override
  ConsumerState<_ProductEditFormStateful> createState() =>
      _ProductEditFormStatefulState();
}

class _ProductEditFormStatefulState
    extends ConsumerState<_ProductEditFormStateful> {
  late final TextEditingController _idController = TextEditingController(
    text: widget.productId,
  );
  late final TextEditingController _titleController = TextEditingController();
  late final TextEditingController _descriptionController =
      TextEditingController();
  late final TextEditingController _priceController = TextEditingController();
  late final TextEditingController _imageUrlController =
      TextEditingController();
  late final TextEditingController _sizesController = TextEditingController();
  late final TextEditingController _colorsController = TextEditingController();
  late final TextEditingController _sectionsController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final productState = ref.watch(productEditNotifierProvider.notifier);
    final product = await productState.getProductById(widget.productId);

    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product ID:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          FormField(label: '', controller: _idController, locked: true),
          SizedBox(height: 16.0),
          Text(
            'Title:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          FormField(
            label: product.title ?? 'Product Title',
            controller: _titleController,
          ),
          SizedBox(height: 16.0),
          Text(
            'Description:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          FormField(
            label: 'Product Description',
            controller: _descriptionController,
          ),
          SizedBox(height: 16.0),
          Text(
            'Price:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          FormField(label: 'Product Price', controller: _priceController),
          SizedBox(height: 16.0),
          Text(
            'Image URL:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          FormField(
            label: 'Product Image URL',
            controller: _imageUrlController,
          ),
          SizedBox(height: 16.0),
          Text(
            'Sizes:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          FormField(label: 'Product Sizes', controller: _sizesController),
          SizedBox(height: 16.0),
          Text(
            'Colors:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          FormField(label: 'Product Colors', controller: _colorsController),
          SizedBox(height: 16.0),
          Text(
            'Sections:',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          FormField(label: 'Product Sections', controller: _sectionsController),
          SizedBox(height: 16.0),
          BlueBigButton(route: '', buttonText: 'Save', onTap: () {}),
        ],
      ),
    );
  }
}

class FormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool locked;

  const FormField({
    super.key,
    required this.label,
    required this.controller,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 16.0, color: Colors.black),
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey[400]),
        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.grey[300]!, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.blue, width: 1.5),
        ),
      ),
      controller: controller,
      enabled: !locked,
    );
  }
}
