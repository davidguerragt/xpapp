import 'package:flutter/material.dart';
import 'package:xpapp/core/navigation/router.dart';

class BlueBigButton extends StatelessWidget {
  final String route;
  final String buttonText;
  final VoidCallback onTap;

  const BlueBigButton({
    super.key,
    required this.route,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
