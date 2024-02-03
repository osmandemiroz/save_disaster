// ignore_for_file: avoid_dynamic_calls, inference_failure_on_untyped_parameter

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:save_disaster/product/model/article.dart';

///News service
class News {
  ///list of news
  List<Article> news = [];

  ///get news from the api
  Future<void> getNews() async {
    const url =
        'https://newsapi.org/v2/everything?q=earthquake&from=2024-01-03&sortBy=publishedAt&apiKey=cbaf626e073d4d258ceda39cddd9cb71';

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
