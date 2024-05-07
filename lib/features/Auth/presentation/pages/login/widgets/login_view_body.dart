import 'package:e_learning_app/core/constants.dart';
import 'package:e_learning_app/core/utils/size_config.dart';
import 'package:e_learning_app/core/widgets/custom_buttons.dart';
import 'package:e_learning_app/core/widgets/space_widget.dart';
import 'package:e_learning_app/features/Auth/presentation/pages/login/widgets/complete_information_item.dart';
import 'package:e_learning_app/features/home/presentation/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ConstrainedBox(
      constraints: BoxConstraints(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const VerticalSpace(10),
            SizedBox(
              child: Image.asset("assets/images/logo.png"),
              height: SizeConfig.defultSize! * 17,
            ),
            const Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 51,
                  color: kMainColor,
                ),
                children: [
                  TextSpan(
                    text: 'R',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'oyal Asia',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
            VerticalSpace(5),
            CompleteInfoItem(
              text: 'Enter Your Username',
            ),
            VerticalSpace(2),
            CompleteInfoItem(
              text: 'Enter your Password',
            ),
            VerticalSpace(5),
            CustomGeneralButton(
                text: 'Login',
                onTap: () {
                  Get.to(
                    () => HomeView(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 600),
                  );
                })
          ],
        ),
      ),
    ));
  }
}
