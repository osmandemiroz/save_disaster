import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

///Preparation view
class EarthquakePrepareView extends StatefulWidget {
  ///preparation view constructor
  const EarthquakePrepareView({super.key});

  @override
  State<EarthquakePrepareView> createState() => _EarthquakePrepareViewState();
}

class _EarthquakePrepareViewState extends State<EarthquakePrepareView> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: WebView(
        initialUrl: 'assets/htmls/step2.html',
      ),
    );
  }
}
