// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:save_disaster/product/constants/app_constants.dart';
import 'package:save_disaster/product/widget/desc_text.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Article view
final class ArticleView extends StatefulWidget {
  /// Article view constructor
  const ArticleView({required this.blogUrl, super.key});

  /// blog url
  final String blogUrl;

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

final class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DescText(description: AppConstants.APP_NAME),
        centerTitle: true,
        elevation: 0,
      ),
      body: WebView(
        initialUrl: widget.blogUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
