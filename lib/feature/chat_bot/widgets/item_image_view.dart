import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

///ItemImageView
final class ItemImageView extends StatelessWidget {
  ///ItemImageView
  const ItemImageView({required this.bytes, super.key});

  ///bytes
  final Uint8List bytes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.low,
      child: ClipRRect(
        borderRadius: context.border.normalBorderRadius,
        child: Image.memory(
          bytes,
          width: context.sized.width * 0.5,
          height: context.sized.height * 0.2,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
