import 'package:e_learning_app/core/constants.dart';
import 'package:e_learning_app/features/home/presentation/home_view.dart';
import 'package:e_learning_app/features/onBoarding/presentation/on_boarding_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/size_config.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(children: [
        Spacer(),
        Image.asset('assets/images/logo.png'),
        FadeTransition(
          opacity: fadingAnimation!,
          child: Text(
            'E-Learning App',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: kMainColor,
            ),
          ),
        ),
        Spacer(),
      ]),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    });
  }
}
