import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

///DescText widget
class DescText extends StatelessWidget {
  ///DescText constructor
  const DescText({required this.description, super.key, this.color});

  ///description
  final String description;

  ///text color
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      overflow: TextOverflow.ellipsis,
      maxLines: 30,
      style: TextStyle(
        color: color,
        fontSize: context.sized.lowValue * 1.75,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
