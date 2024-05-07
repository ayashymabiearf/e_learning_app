import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomeIndicator extends StatelessWidget {
  const CustomeIndicator({super.key, required this.dotIndex});
  final int? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: kMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: kMainColor),
          )),
      dotsCount: 3,
      position: dotIndex!,
    );
  }
}
