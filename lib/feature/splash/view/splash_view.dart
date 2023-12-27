// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/splash/model/contents_model.dart';
import 'package:save_disaster/feature/splash/widget/splash_button.dart';
import 'package:save_disaster/product/navigation/app_router.dart';

///splash view of a splash screen
@RoutePage()
class SplashView extends StatefulWidget {
  ///splash view constructor
  const SplashView({
    super.key,
  });

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ///dot index of the splash screen
  ValueNotifier<int> currentIndex = ValueNotifier(0);

  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: PageView.builder(
              controller: _pageController,
              itemCount: contents.length,
              onPageChanged: (value) => currentIndex.value = value,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: context.padding.high,
                        child: Center(
                          child: contents[index].image,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Text(
                            contents[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: context.sized.height * 0.02,
                            ),
                          ),
                          SizedBox(
                            height: context.sized.height * 0.01,
                          ),
                          Text(contents[index].description),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => screenDotBuilder(index, context),
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: currentIndex,
            builder: (BuildContext context, int value, Widget? child) {
              return Expanded(
                child: SplashButton(
                  onTap: () {
                    if (currentIndex.value == contents.length - 1) {
                      context.router.push(const HomeRoute());
                    } else {
                      _pageController.nextPage(
                        duration: context.duration.durationLow,
                        curve: Curves.decelerate,
                      );
                    }
                  },
                  text: currentIndex.value == contents.length - 1
                      ? 'Get Started'
                      : 'Next',
                ),
              );
            },
          ),
          SizedBox(
            height: context.sized.height * 0.05,
          ),
        ],
      ),
    );
  }

  ///dot widget builder for the splash screen
  Widget screenDotBuilder(int index, BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentIndex,
      builder: (BuildContext context, int value, Widget? child) {
        return Container(
          margin: context.padding.onlyRightLow,
          height: context.sized.height * 0.01,
          width: value == index
              ? context.sized.width * 0.06
              : context.sized.width * 0.03,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.sized.mediumValue),
            color: Theme.of(context).buttonTheme.colorScheme?.primary,
          ),
        );
      },
    );
  }
}
