import 'package:flutter/widgets.dart';
import 'package:save_disaster/feature/home/view/home_view.dart';
import 'package:save_disaster/product/model/article.dart';
import 'package:save_disaster/product/service/news.dart';

///home view mixin
mixin HomeViewMixin on State<HomeView> {
  ///homeView title
  final String homeViewTitle = 'Home';

  ///articles
  List<Article> articles = [];

  ///loading state
  ValueNotifier<bool> isLoading = ValueNotifier(true);

  ///get news
  Future<void> getNews() async {
    final news = News();
    await news.getNews();
    articles = news.news;
    isLoading.value = false;
    setState(() {});
  }
}
