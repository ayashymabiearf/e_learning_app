import 'package:e_learning_app/features/onBoarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomePageView extends StatelessWidget {
  const CustomePageView({super.key, required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: 'assets/images/on_boarding_1.png',
          title: 'e learning app',
          subTitle: 'Fast Shipping and Fast Delivery',
        ),
        PageViewItem(
          image: 'assets/images/on_boarding_2.png',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: 'assets/images/on_boarding_3.png',
          title: 'Delivery Arrived',
          subTitle: 'Door to Door Delivery',
        ),
      ],
    );
  }
}
