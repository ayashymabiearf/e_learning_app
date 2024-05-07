import 'package:e_learning_app/core/utils/size_config.dart';
import 'package:e_learning_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.subTitle, this.image});
  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(20),
        SizedBox(
            height: SizeConfig.defultSize! * 20, child: Image.asset(image!)),
        // const VerticalSpace(5),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          softWrap: false,
        ),
        const VerticalSpace(4),
        Text(
          subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          softWrap: false,
        )
      ],
    );
  }
}
