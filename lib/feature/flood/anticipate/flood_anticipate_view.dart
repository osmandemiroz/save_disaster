import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///FloodAnticipate view
final class FloodAnticipateView extends StatelessWidget {
  ///FloodAnticipate view constructor
  const FloodAnticipateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.floodanticipate),
    );
  }
}
