import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/home/view/home_view_mixin.dart';
import 'package:save_disaster/feature/home/view/side_menu_view.dart';
import 'package:save_disaster/feature/home/widget/blog_tile_widget.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:save_disaster/product/navigation/app_router.dart';
import 'package:save_disaster/product/widget/app_logo.dart';
import 'package:save_disaster/product/widget/big_text.dart';

/// This is the home view of the app
@RoutePage()
final class HomeView extends StatefulWidget {
  /// This widget is constructor for the home view
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

final class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin, HomeViewMixin {
  @override
  void initState() {
    getNews();
    animationController = AnimationController(
      vsync: this,
      duration: context.duration.durationLow,
    )..addListener(() {
        setState(() {});
      });
    animate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: context.duration.durationLow,
            curve: Curves.fastOutSlowIn,
            left: isSideBarClosed ? -context.sized.width * 0.8 : 0,
            width: context.sized.width * 0.8,
            height: context.sized.height,
            child: const SideBarView(),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(animation.value - 30 * animation.value * pi / 180),
            child: Transform.translate(
              offset: Offset(animation.value * context.sized.width * 0.7, 0),
              child: Transform.scale(
                scale: scaleAnimation.value,
                child: ClipRRect(
                  borderRadius: isSideBarClosed
                      ? BorderRadius.zero
                      : context.border.highBorderRadius,
                  child: _mainHomeView(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Scaffold _mainHomeView(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        title: const AppLogo(),
        leading: IconButton(
          onPressed: () {
            if (isSideBarClosed) {
              animationController.forward();
            } else {
              animationController.reverse();
            }
            isSideBarClosed = !isSideBarClosed;
          },
          icon: Icon(
            Icons.more_vert_outlined,
            size: context.sized.mediumValue,
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: isLoading,
        builder: (BuildContext _, bool value, Widget? child) {
          if (value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return child!;
          }
        },
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          padding: context.padding.horizontalLow,
          child: Column(
            children: [
              SizedBox(height: context.sized.height * 0.05),
              GestureDetector(
                onTap: () => context.router.push(const ChatBotRoute()),
                child: Container(
                  padding: context.padding.medium,
                  width: context.sized.width,
                  height: context.sized.height * 0.3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.sized.height * 0.15,
                        child: Assets.images.icGemini.image(),
                      ),
                      const BigText(title: 'Get Help from Gemini AI'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: context.sized.height * 0.1),
              const BigText(title: 'Latest News'),
              const Divider(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: articles.length,
                itemBuilder: (_, index) {
                  return BlogTile(
                    desc: articles[index].description!,
                    imageUrl: articles[index].urlToImage!,
                    title: articles[index].title!,
                    url: articles[index].url!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
