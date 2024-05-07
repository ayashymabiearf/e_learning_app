import 'package:e_learning_app/core/utils/size_config.dart';
import 'package:e_learning_app/core/widgets/custom_buttons.dart';
import 'package:e_learning_app/features/Auth/presentation/pages/login/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_indicator.dart';
import 'custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomePageView(
          pageController: pageController,
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.defultSize! * 19,
            child: CustomeIndicator(
              dotIndex: pageController!.hasClients
                  ? pageController?.page!.round()
                  : 0,
            )),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page?.round() == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defultSize! * 10,
            right: 40,
            child: const Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff898989),
              ),
              softWrap: false,
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defultSize! * 10,
            right: SizeConfig.defultSize! * 10,
            bottom: SizeConfig.defultSize! * 10,
            child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page!.round() < 2) {
                  pageController?.nextPage(
                      duration: Duration(microseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => LoginView(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 600));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page?.round() == 2
                      ? 'Get Started'
                      : 'Next')
                  : 'Next',
            )),
      ],
    );
  }
}
