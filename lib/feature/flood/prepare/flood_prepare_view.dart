import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///FloodPrepare view
final class FloodPrepareView extends StatelessWidget {
  ///FloodPrepare view constructor
  const FloodPrepareView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.floodprepare),
    );
  }
}
