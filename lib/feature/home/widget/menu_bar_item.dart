import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/product/widget/big_text.dart';

///MenuBarItem of home page
final class MenuBarItem extends StatelessWidget {
  ///MenuBarItem constructor
  const MenuBarItem({
    required this.onTap,
    required this.icon,
    required this.menuName,
    super.key,
  });

  ///onTap action
  final VoidCallback onTap;

  ///icon
  final Widget icon;

  ///menu name
  final String menuName;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          height: context.sized.height * 0.07,
          width: context.sized.width * 0.8,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.sized.height * 0.04),
              ),
            ),
          ),
        ),
        ListTile(
          onTap: onTap,
          leading: SizedBox(
            height: context.sized.height * 0.06,
            child: icon,
          ),
          title: BigText(title: menuName),
        ),
      ],
    );
  }
}
