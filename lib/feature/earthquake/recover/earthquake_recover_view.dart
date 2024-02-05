import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///EarthquakeRecover View
final class EarthquakeRecoverView extends StatelessWidget {
  ///Earthquake view constructor
  const EarthquakeRecoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.earthquakerecover),
    );
  }
}
