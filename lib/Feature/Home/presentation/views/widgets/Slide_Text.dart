import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      //   هنا بس rebulid وهى بتعمل  set state مبستخدمش معاها
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
              textAlign: TextAlign.center,
              'Read free Boook',
              style: TextStyle(fontSize: 18)),
        );
      },
    );
  }
}
