import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpapp/core/navigation/router.dart';

class OnboardingView extends ConsumerWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: const [
              Spacer(),
              _IllustrationSection(),
              Spacer(),
              _BottomCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class _IllustrationSection extends StatelessWidget {
  const _IllustrationSection();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Icon(Icons.image, size: 44, color: Colors.white),
    );
  }
}

class _BottomCard extends StatefulWidget {
  const _BottomCard();

  @override
  State<_BottomCard> createState() => _BottomCardState();
}

class _BottomCardState extends State<_BottomCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> fadeAnimation;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..forward();

    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.2), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 24,
            offset: Offset(0, -4),
          ),
        ],
      ),
      padding: const EdgeInsets.fromLTRB(28, 20, 28, 40),
      child: FadeTransition(
        opacity: fadeAnimation,
        child: SlideTransition(
          position: slideAnimation,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              _DotsSection(),
              SizedBox(height: 24),
              Text(
                'Create a prototype in just a few minutes',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              Text(
                'Enjoy these pre-made components and worry only about creating the best product ever.',
                style: TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 24),
              _ButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _DotsSection extends StatelessWidget {
  const _DotsSection();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        children: const [
          _DotIndicator(isActive: true),
          _DotIndicator(isActive: false),
          _DotIndicator(isActive: false),
        ],
      ),
    );
  }
}

class _DotIndicator extends StatelessWidget {
  const _DotIndicator({required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: const EdgeInsets.only(right: 6),
      width: isActive ? 8 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.indigoAccent : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        router.goNamed(Routes.personalise);
      },
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.indigoAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
