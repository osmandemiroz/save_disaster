import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

///BigText widget
class BigText extends StatelessWidget {
  ///BigText constructor
  const BigText({required this.title, super.key, this.color});

  ///title text
  final String title;

  ///text color
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: context.sized.lowValue * 3,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
        shadows: [
          Shadow(
            color: Theme.of(context).textTheme.bodyMedium!.color!,
            offset: const Offset(1, 1),
            blurRadius: context.sized.normalValue,
          ),
        ],
        wordSpacing: context.sized.lowValue,
      ),
    );
  }
}
