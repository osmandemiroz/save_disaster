import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///avalanche surviving view
final class AvalancheSurvivingView extends StatelessWidget {
  ///avalanche surviving view constructor
  const AvalancheSurvivingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.avalanchesurviving),
    );
  }
}
