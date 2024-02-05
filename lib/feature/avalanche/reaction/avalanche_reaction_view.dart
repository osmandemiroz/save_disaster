import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///avalanche reaction view of the app
final class AvalancheReactionView extends StatelessWidget {
  ///avalanche reaction view constructor
  const AvalancheReactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.avalanchereaction),
    );
  }
}
