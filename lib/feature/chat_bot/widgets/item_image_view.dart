import 'dart:typed_data';

import 'package:flutter/material.dart';

///ItemImageView
class ItemImageView extends StatelessWidget {
  ///ItemImageView
  const ItemImageView({required this.bytes, super.key});

  ///bytes
  final Uint8List bytes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.memory(
          bytes,
          width: 110,
          height: 110,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
