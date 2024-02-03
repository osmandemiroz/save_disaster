// ignore_for_file: avoid_dynamic_calls, inference_failure_on_untyped_parameter, lines_longer_than_80_chars

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:save_disaster/product/config/env.dart';
import 'package:save_disaster/product/model/article.dart';

///News service
class News {
  ///list of news
  List<Article> news = [];

  ///get news from the api
  Future<void> getNews() async {
    final url =
        '${Env.newsBaseUrl}&from=${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}&sortBy=publishedAt&apiKey=${Env.newsApiKey}';

    final response = await http.get(Uri.parse(url));

    final jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          news.add(Article.fromJson(element as Map<String, dynamic>));
        }
      });
    }
  }
}
