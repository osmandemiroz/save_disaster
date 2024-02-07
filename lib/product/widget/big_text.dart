import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      style: GoogleFonts.agdasima(
        color: color,
        fontSize: context.sized.height * 0.03,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            blurRadius: 1,
            color: Theme.of(context).unselectedWidgetColor,
          ),
        ],
      ),
    );
  }
}
