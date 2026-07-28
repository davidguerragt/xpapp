import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:xpapp/core/navigation/router.dart';
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
                router.goNamed(Routes.productABC);
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
    if (productId != 'new') {
      final state = ref.watch(productEditProvider(productId));

      final Widget content = state.when(
        initial: () => Center(child: Text('Initial State')),
        loading: (isLoading) => Center(child: CircularProgressIndicator()),
        loaded: (product) => _ProductEditFormStateful(product: product),
        error: (message) => Center(child: Text(message)),
        saving: (isSaving) => Center(child: CircularProgressIndicator()),
        saved: (product) => Center(child: Text('Producto guardado')),
        deleting: (isDeleting) => Center(child: CircularProgressIndicator()),
        deleted: () {
          // Handle the deleted state, e.g., navigate back or show a message
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Producto eliminado')));
            router.goNamed(Routes.productABC);
          });
          return Center(child: Text('Producto eliminado'));
        },
        pickingImage: (bool isPicking) =>
            Center(child: CircularProgressIndicator()),
        imagePicked: (Object? image) =>
            Center(child: Text('Imagen seleccionada')),
        capturingImage: (bool isCapturing) =>
            Center(child: CircularProgressIndicator()),
        imageCaptured: (Object image) =>
            Center(child: Text('Imagen capturada')),
      );
      return Column(children: [SafeArea(child: content)]);
    } else {
      final Widget content = _ProductEditFormStateful(
        product: AdminProductEntity(
          id: '',
          title: '',
          description: '',
          price: 0.0,
          image: '',
          sizes: [],
          colors: [],
          sections: [],
        ),
      );
      return Column(children: [SafeArea(child: content)]);
    }
  }
}

class _ProductEditFormStateful extends ConsumerStatefulWidget {
  final AdminProductEntity product;

  const _ProductEditFormStateful({required this.product});

  @override
  ConsumerState<_ProductEditFormStateful> createState() =>
      _ProductEditFormStatefulState();
}

class _ProductEditFormStatefulState
    extends ConsumerState<_ProductEditFormStateful> {
  late TextEditingController _idController;
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late TextEditingController _priceController;
  late TextEditingController _imageUrlController;
  late TextEditingController _sectionsController;
  XFile? _imageFile;
  late List<String> _colors;
  late List<String> _sizes;
  late List<String> _sections;

  @override
  void initState() {
    super.initState();
    _idController = TextEditingController(text: widget.product.id);
    _titleController = TextEditingController(text: widget.product.title);
    _descriptionController = TextEditingController(
      text: widget.product.description,
    );
    _priceController = TextEditingController(
      text: widget.product.price.toString(),
    );
    _imageUrlController = TextEditingController(text: widget.product.image);
    _imageFile = widget.product.imageFile;
    _sections = List<String>.from(widget.product.sections ?? []);
    _colors = List<String>.from(widget.product.colors ?? []);
    _sizes = List<String>.from(widget.product.sizes ?? []);
    _sectionsController = TextEditingController(text: _sections.join(', '));
  }

  @override
  void dispose() {
    _idController.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _imageUrlController.dispose();
    _sectionsController.dispose();
    super.dispose();
  }

  void _addProduct(XFile? imageFile) {
    final product = AdminProductEntity(
      id: _idController.text,
      title: _titleController.text,
      description: _descriptionController.text,
      price: double.tryParse(_priceController.text) ?? 0.0,
      image: _imageUrlController.text,
      sizes: _sizes,
      colors: _colors,
      sections: _sectionsController.text
          .split(',')
          .map((s) => s.trim())
          .toList(),
      imageFile: imageFile,
    );

    ref.read(productEditProvider(product.id).notifier).addProduct(product);
  }

  void _updateProduct(XFile? imageFile) {
    final product = AdminProductEntity(
      id: _idController.text,
      title: _titleController.text,
      description: _descriptionController.text,
      price: double.tryParse(_priceController.text) ?? 0.0,
      image: _imageUrlController.text,
      sizes: _sizes,
      colors: _colors,
      sections: _sectionsController.text
          .split(',')
          .map((s) => s.trim())
          .toList(),
      imageFile: imageFile,
    );

    ref.read(productEditProvider(product.id).notifier).updateProduct(product);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
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
          SizedBox(height: 16.0),
          Row(
            children: [
              ButtonWithIcon(
                context: context,
                icon: Icons.image,
                text: 'Select Image',
                onPressed: () async {
                  final imageFile = await ref
                      .read(productEditProvider(widget.product.id).notifier)
                      .pickImage();
                  if (imageFile != null) {
                    setState(() {
                      _imageFile = imageFile;
                      _imageUrlController.text = imageFile.path;
                    });
                  }
                },
              ),
              ButtonWithIcon(
                context: context,
                icon: Icons.image,
                text: 'Capture Image',
                onPressed: () async {
                  final imageFile = await ref
                      .read(productEditProvider(widget.product.id).notifier)
                      .captureImage();
                  if (imageFile != null) {
                    setState(() {
                      _imageFile = imageFile;
                      _imageUrlController.text = imageFile.path;
                    });
                  }
                },
              ),
            ],
          ),

          // FormFieldLabel(label: 'Product ID:'),
          // FormField(
          //   controller: _idController,
          //   hintText: 'Product ID',
          //   icon: Icons.lock,
          //   iconColor: Colors.grey,
          //   locked: true,
          // ),
          // SizedBox(height: 16.0),
          FormFieldLabel(label: 'Title:'),
          FormField(
            controller: _titleController,
            hintText: 'Product Title',
            icon: Icons.title,
            iconColor: Colors.grey,
          ),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Description:'),
          FormField(
            controller: _descriptionController,
            hintText: 'Product Description',
            icon: Icons.description,
            iconColor: Colors.grey,
          ),
          SizedBox(height: 16.0),
          FormFieldLabel(label: 'Price:'),
          FormField(
            controller: _priceController,
            hintText: 'Product Price',
            icon: Icons.attach_money,
            iconColor: Colors.grey,
          ),
          SizedBox(height: 16.0),
          // FormFieldLabel(label: 'Image URL:'),
          // FormField(
          //   controller: _imageUrlController,
          //   hintText: 'Image URL',
          //   icon: Icons.image,
          //   iconColor: Colors.grey,
          // ),
          SizedBox(height: 16.0),
          Row(
            children: [
              FormFieldLabel(label: 'Sizes:'),
              SizedBox(width: 8.0),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Handle add size
                  showDialog(
                    context: context,
                    builder: (context) {
                      final TextEditingController newSizeController =
                          TextEditingController();
                      return AlertDialog(
                        title: Text('Add Size'),
                        content: FormField(controller: newSizeController),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              final newSize = newSizeController.text;
                              if (newSize.isNotEmpty) {
                                setState(() {
                                  _sizes.add(newSize);
                                });
                                Navigator.of(context).pop();
                              }
                            },
                            child: Text('Add'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
          Wrap(
            spacing: 4,
            children: _sizes.map((size) {
              return GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    _sizes.remove(size);
                  });
                },
                child: ChoiceChip(
                  label: Text(
                    size.trim(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Inter',
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                  selected: false,
                  selectedColor: Colors.blueAccent,
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.black),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              FormFieldLabel(label: 'Colors:'),
              SizedBox(width: 8.0),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Handle add color
                  showDialog(
                    context: context,
                    builder: (context) {
                      final TextEditingController newColorController =
                          TextEditingController();
                      return AlertDialog(
                        title: Text('Add Color'),
                        content: FormField(controller: newColorController),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              final newColor = newColorController.text;
                              if (newColor.isNotEmpty) {
                                setState(() {
                                  _colors.add(newColor);
                                });
                                Navigator.of(context).pop();
                              }
                            },
                            child: Text('Add'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
          Wrap(
            spacing: 4,
            children: _colors.map((color) {
              return GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    _colors.remove(color);
                  });
                },
                child: ChoiceChip(
                  label: Text(
                    color.trim(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: color.trim().toLowerCase() == 'black'
                          ? Colors.white
                          : Colors.black,
                      fontFamily: 'Inter',
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                  selected: true,
                  selectedColor: _getColorFromName(color),
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.black),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              FormFieldLabel(label: 'Sections:'),
              SizedBox(width: 8.0),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Handle add section
                  showDialog(
                    context: context,
                    builder: (context) {
                      final TextEditingController newSectionController =
                          TextEditingController();
                      return AlertDialog(
                        title: Text('Add Section'),
                        content: FormField(controller: newSectionController),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              final newSection = newSectionController.text;
                              if (newSection.isNotEmpty) {
                                setState(() {
                                  final sections = _sectionsController.text
                                      .split(',')
                                      .map((s) => s.trim())
                                      .toList();
                                  sections.add(newSection);
                                  _sectionsController.text = sections.join(
                                    ', ',
                                  );
                                });
                                Navigator.of(context).pop();
                              }
                            },
                            child: Text('Add'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
          Wrap(
            spacing: 4,
            children: _sections.map((section) {
              return GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    _sections.remove(section);
                  });
                },
                child: ChoiceChip(
                  label: Text(
                    section.trim(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Inter',
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                  selected: true,
                  selectedColor: _getColorFromName(section),
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.black),
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 16.0),
          BlueBigButton(
            route: '',
            buttonText: 'Save',
            onTap: () {
              if (widget.product.id.isEmpty) {
                _addProduct(_imageFile);
              } else {
                _updateProduct(_imageFile);
              }
            },
          ),
        ],
      ),
    );
  }

  Color? _getColorFromName(String color) {
    switch (color.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'green':
        return Colors.green;
      case 'blue':
        return Colors.blue;
      case 'yellow':
        return Colors.yellow;
      case 'orange':
        return Colors.orange;
      case 'purple':
        return Colors.purple;
      case 'pink':
        return Colors.pink;
      case 'brown':
        return Colors.brown;
      case 'grey':
        return Colors.grey;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'DarkGray':
        return Colors.grey[800];
      case 'LightGray':
        return Colors.grey[400];

      default:
        return null; // Return null if the color name is not recognized
    }
  }
}

class ButtonWithIcon extends StatelessWidget {
  final BuildContext context;
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const ButtonWithIcon({
    super.key,
    required this.context,
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(text),
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
  final String? hintText;
  final IconData? icon;
  final Color? iconColor;
  final bool locked;

  const FormField({
    super.key,
    required this.controller,
    this.hintText,
    this.icon,
    this.iconColor,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
        fontFamily: 'Outfit',
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16.0,
          color: Colors.grey[200],
          fontFamily: 'Outfit',
        ),
        prefixIcon: icon != null
            ? Icon(icon, color: iconColor ?? Colors.grey)
            : null,
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
