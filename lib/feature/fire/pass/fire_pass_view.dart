import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///FirePass view
final class FirePassView extends StatelessWidget {
  ///FirePass view constructor
  const FirePassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.firepass),
    );
  }
}
