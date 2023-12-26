import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/splash/model/contents_model.dart';
import 'package:save_disaster/feature/splash/widget/buttons.dart';

///splash view of a splash screen
class SplashView extends StatelessWidget {
  ///splash view constructor
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: contents.length,
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
                        fontSize: context.sized.height * 0.020,
                      ),
                    ),
                    SizedBox(
                      height: context.sized.height * 0.01,
                    ),
                    Text(contents[index].description),
                  ],
                ),
              ),
              Expanded(
                child: SplashButton(
                  onTap: () {},
                  text: index == contents.length - 1 ? 'Get Started' : 'Next',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
