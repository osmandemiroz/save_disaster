import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///Preparation view
final class EarthquakePrepareView extends StatelessWidget {
  ///preparation view constructor
  const EarthquakePrepareView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.earthquakeprepare),
    );
  }
}
