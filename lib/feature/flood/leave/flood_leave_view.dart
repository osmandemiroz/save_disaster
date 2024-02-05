import 'package:flutter/material.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///FloodLeave view
final class FloodLeaveView extends StatelessWidget {
  ///FloodLeave view constructor
  const FloodLeaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfPdfViewer.asset(Assets.pdfs.floodleave),
    );
  }
}
