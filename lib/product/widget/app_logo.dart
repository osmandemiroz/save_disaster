import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/product/constants/app_constants.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:save_disaster/product/widget/big_text.dart';

///App logo widget
class AppLogo extends StatelessWidget {
  ///App logo constructor
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sized.height * 0.04,
      width: context.sized.width * 0.5,
      child: Row(
        children: [
          Assets.lottie.animLeaf.lottie(),
          const BigText(title: AppConstants.APP_NAME),
        ],
      ),
    );
  }
}
