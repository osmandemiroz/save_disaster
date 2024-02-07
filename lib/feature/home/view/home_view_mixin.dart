import 'package:flutter/widgets.dart';
import 'package:save_disaster/feature/home/view/home_view.dart';
import 'package:save_disaster/product/model/article.dart';
import 'package:save_disaster/product/service/news.dart';

///home view mixin
mixin HomeViewMixin on State<HomeView> {
  ///isSideBarOpened value of the home view
  bool isSideBarClosed = true;

  ///animation controller
  late AnimationController animationController;

  ///animation
  late Animation<double> animation;

  ///scale animation
  late Animation<double> scaleAnimation;

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

  ///animation state
  void animate() {
    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOutSine,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
