import 'package:flutter/material.dart';

class AppbarWidgets extends StatelessWidget {
  const AppbarWidgets({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(children: [AppBarFavoriteButton(), AppBarCartButton()]);
  }
}

class AppBarSearchButton extends StatelessWidget {
  const AppBarSearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.search, color: Colors.black),
    );
  }
}

class AppBarFavoriteButton extends StatelessWidget {
  const AppBarFavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.favorite_border, color: Colors.black),
    );
  }
}

class AppBarCartButton extends StatelessWidget {
  const AppBarCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
        ),
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Text(
              '9',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }
}
