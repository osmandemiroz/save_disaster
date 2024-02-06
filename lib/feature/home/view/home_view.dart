// ignore_for_file: unused_field, strict_raw_type

import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/home/view/home_view_mixin.dart';
import 'package:save_disaster/feature/home/view/side_menu_view.dart';
import 'package:save_disaster/feature/home/widget/blog_tile_widget.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:save_disaster/product/navigation/app_router.dart';

/// This is the home view of the app
/// It contains the side menu and the content
@RoutePage()
final class HomeView extends StatefulWidget {
  /// This widget is constructor for the home view
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

final class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin, HomeViewMixin {
  ///isSideBarOpened value of the home view
  bool isSideBarClosed = true;
  late AnimationController _animationController;

  late Animation<double> _animation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    getNews();
    _animationController = AnimationController(
      vsync: this,
      duration: context.duration.durationLow,
    )..addListener(() {
        setState(() {});
      });

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutSine,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
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
              ..rotateY(_animation.value - 30 * _animation.value * pi / 180),
            child: Transform.translate(
              offset: Offset(_animation.value * context.sized.width * 0.7, 0),
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: ClipRRect(
                  borderRadius: isSideBarClosed
                      ? BorderRadius.zero
                      : context.border.highBorderRadius,
                  child: mainHomeView(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Scaffold mainHomeView(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(homeViewTitle),
        leading: IconButton(
          onPressed: () {
            if (isSideBarClosed) {
              _animationController.forward();
            } else {
              _animationController.reverse();
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
              GestureDetector(
                onTap: () => context.router.push(const ChatBotRoute()),
                child: Container(
                  width: context.sized.width,
                  height: context.sized.height * 0.3,
                  color: Colors.red,
                ),
              ),
              Assets.lottie.animWorld.lottie(
                width: context.sized.width,
                height: context.sized.height * 0.3,
              ),
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
