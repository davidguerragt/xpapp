import 'package:flutter/material.dart';
import 'package:xpapp/core/navigation/router.dart';

class AppbarWidgets extends StatelessWidget {
  final int cartProductsNumber;
  final bool activeSession;
  const AppbarWidgets({
    super.key,
    required this.cartProductsNumber,
    required this.activeSession,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppBarStartSessiongButton(visibility: activeSession),
        AppBarFavoriteButton(),
        AppBarCartButton(cartProductsNumber: cartProductsNumber),
        // AppBarSectionABCButton(visibility: !activeSession),
        // AppBarProductABCButton(visibility: !activeSession),
        AppBarTransactionListButton(visibility: !activeSession),
        AppBarTransactionListPagedButton(visibility: !activeSession),
        AppBarLogoutButton(visibility: activeSession),
      ],
    );
  }
}

class AppBarLogoutButton extends StatelessWidget {
  final bool visibility;
  const AppBarLogoutButton({super.key, required this.visibility});

  @override
  Widget build(BuildContext context) {
    return visibility
        ? IconButton(
            onPressed: () {
              router.goNamed(Routes.logout);
            },
            icon: const Icon(Icons.logout, color: Colors.black),
          )
        : const SizedBox();
  }
}

class AppBarTransactionListButton extends StatelessWidget {
  final bool visibility;
  const AppBarTransactionListButton({super.key, required this.visibility});

  @override
  Widget build(BuildContext context) {
    return visibility
        ? const SizedBox()
        : IconButton(
            onPressed: () {
              router.goNamed(Routes.transactionList);
            },
            icon: const Icon(Icons.list_alt_outlined, color: Colors.black),
          );
  }
}

class AppBarTransactionListPagedButton extends StatelessWidget {
  final bool visibility;
  const AppBarTransactionListPagedButton({super.key, required this.visibility});

  @override
  Widget build(BuildContext context) {
    return visibility
        ? const SizedBox()
        : IconButton(
            onPressed: () {
              router.goNamed(Routes.transactionListPaged);
            },
            icon: const Icon(Icons.pages_rounded, color: Colors.black),
          );
  }
}

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        router.goNamed(Routes.ecommerceHome);
      },
      icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
    );
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

class AppBarStartSessiongButton extends StatelessWidget {
  final bool visibility;
  const AppBarStartSessiongButton({super.key, required this.visibility});

  @override
  Widget build(BuildContext context) {
    return visibility
        ? const SizedBox()
        : IconButton(
            onPressed: () {
              router.goNamed(Routes.login);
            },
            icon: const Icon(Icons.person, color: Colors.black),
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
  final int cartProductsNumber;
  const AppBarCartButton({super.key, required this.cartProductsNumber});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            router.goNamed(Routes.yourBag);
          },
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
              cartProductsNumber.toString(),
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ),
      ],
    );
  }
}

class AppBarSectionABCButton extends StatelessWidget {
  final bool visibility;
  const AppBarSectionABCButton({super.key, required this.visibility});

  @override
  Widget build(BuildContext context) {
    return visibility
        ? const SizedBox()
        : IconButton(
            onPressed: () {
              router.goNamed(Routes.sectionABC);
            },
            icon: const Icon(Icons.filter_frames, color: Colors.black),
          );
  }
}

class AppBarProductABCButton extends StatelessWidget {
  final bool visibility;
  const AppBarProductABCButton({super.key, required this.visibility});

  @override
  Widget build(BuildContext context) {
    return visibility
        ? const SizedBox()
        : IconButton(
            onPressed: () {
              router.goNamed(Routes.productABC);
            },
            icon: const Icon(Icons.list_outlined, color: Colors.black),
          );
  }
}
