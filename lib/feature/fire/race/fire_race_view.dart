import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///FireRace view
class FireRaceView extends StatelessWidget {
  ///FireRace view constructor
  const FireRaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.firerace),
    );
  }
}
