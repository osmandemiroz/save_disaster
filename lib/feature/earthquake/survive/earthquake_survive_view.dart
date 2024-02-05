import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///EarthquakeSurvive view
final class EarthquakeSurviveView extends StatelessWidget {
  ///Earthquake survive view constructor
  const EarthquakeSurviveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.earthquakesurvive),
    );
  }
}
