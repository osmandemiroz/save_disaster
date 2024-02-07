import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

///DescText widget
final class DescText extends StatelessWidget {
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
      overflow: TextOverflow.fade,
      maxLines: 7,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: context.sized.height * 0.02,
        fontWeight: FontWeight.w400,
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
