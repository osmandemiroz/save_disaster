import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

///BigText widget
final class BigText extends StatelessWidget {
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
      maxLines: 2,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        color: color,
        fontSize: context.sized.lowValue * 3,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
        shadows: [
          Shadow(
            color:
                Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.4),
            offset: const Offset(1, 1),
            blurRadius: context.sized.lowValue,
          ),
        ],
        wordSpacing: context.sized.lowValue * 0.1,
      ),
    );
  }
}
