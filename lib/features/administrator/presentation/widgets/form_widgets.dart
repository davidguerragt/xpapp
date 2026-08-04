import 'package:flutter/material.dart';

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
  final TextInputType? keyboardType;

  const FormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.icon,
    this.iconColor,
    this.locked = false,
    this.keyboardType = TextInputType.text,
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
        fillColor: Colors.white, // Set the background color to light blue++
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.grey, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.black, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.indigo, width: 1.0),
        ),
      ),
      controller: controller,
      enabled: !locked,
      keyboardType: keyboardType,
    );
  }
}
