import 'package:flutter/material.dart';
import 'package:xpapp/core/navigation/router.dart';

class AdminAppBarBackButton extends StatelessWidget {
  const AdminAppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        router.pop();
      },
      icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
    );
  }
}
