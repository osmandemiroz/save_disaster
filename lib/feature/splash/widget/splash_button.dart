import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

/// widget
class SplashButton extends StatefulWidget {
  ///next button constructor
  const SplashButton({required this.text, required this.onTap, super.key});

  ///next button text
  final String text;

  ///button onTap action
  final VoidCallback onTap;

  @override
  State<SplashButton> createState() => _SplashButtonState();
}

class _SplashButtonState extends State<SplashButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Center(
            child: Container(
              height: context.sized.height * 0.08,
              width: context.sized.height * 0.3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).hoverColor,
                    Theme.of(context).dividerColor,
                  ],
                ),
                borderRadius: BorderRadius.circular(context.sized.height * 0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: context.sized.width * 0.3,
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: context.sized.height * 0.02,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  ),
                  Container(
                    padding: context.padding.low,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                    ),
                    child: Icon(
                      Icons.arrow_right_alt_outlined,
                      size: context.sized.height * 0.05,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
