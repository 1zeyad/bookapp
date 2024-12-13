import 'package:bookapp/Feature/Home/presentation/views/widgets/Slide_Text.dart';

import 'package:bookapp/core/utlies/AssetData.dart';

import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();

    init_sliding_animation();

    futureDelaytransition();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assetdata.image),
        const SizedBox(
          height: 6,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  futureDelaytransition() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push('/homwView');
    });
  }

  void init_sliding_animation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void dispose() {
    super.dispose();
    animationController.dispose(); //  عشان احسن من الذاكره ثوابت
  }
}
