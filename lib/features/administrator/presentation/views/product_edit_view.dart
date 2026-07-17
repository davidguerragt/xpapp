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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [_BodyWidget(productId: productId)]),
          ),
        ),
      ),
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
  final String? productId;
  const _ProductEditFormStateful({required this.productId});

  @override
  ConsumerState<_ProductEditFormStateful> createState() =>
      _ProductEditFormStatefulState();
}

class _ProductEditFormStatefulState
    extends ConsumerState<_ProductEditFormStateful> {
  late final TextEditingController _idController = TextEditingController(
    text: widget.productId ?? '',
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
    final dynamic product;
    if (widget.productId != null && widget.productId!.isNotEmpty) {
      product = productState.getProductById(widget.productId!);
    } else {
      product = null;
    }

    if (product != null) {
      _idController.text = product?.id ?? '';
      _titleController.text = product?.title ?? '';
      _descriptionController.text = product?.description ?? '';
      _priceController.text = product?.price() ?? '';
      _imageUrlController.text = product?.imageUrl ?? '';
      _sizesController.text = product?.sizes.join(', ') ?? '';
      _colorsController.text = product?.colors.join(', ') ?? '';
      _sectionsController.text = product?.sections.join(', ') ?? '';
    }

    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormFieldLabel(label: 'Product ID:'),
          FormField(controller: _idController, locked: true),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Title:'),
          FormField(controller: _titleController),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Description:'),
          FormField(controller: _descriptionController),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Price:'),
          FormField(controller: _priceController),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Image URL:'),
          FormField(controller: _imageUrlController),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Sizes:'),
          FormField(controller: _sizesController),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Colors:'),
          FormField(controller: _colorsController),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Sections:'),
          FormField(controller: _sectionsController),
          SizedBox(height: 16.0),
          BlueBigButton(route: '', buttonText: 'Save', onTap: () {}),
        ],
      ),
    );
  }
}

class FormFieldLabel extends StatelessWidget {
  final String label;
  const FormFieldLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Outfit',
        color: Colors.indigo,
      ),
    );
  }
}

class FormField extends StatelessWidget {
  final TextEditingController controller;
  final bool locked;

  const FormField({super.key, required this.controller, this.locked = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontFamily: 'Outfit',
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          fontSize: 16.0,
          color: Colors.grey[200],
          fontFamily: 'Outfit',
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        filled: true,
        fillColor: Colors.white, // Set the background color to light blue
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.transparent, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.indigo, width: 1.0),
        ),
      ),
      controller: controller,
      enabled: !locked,
    );
  }
}
