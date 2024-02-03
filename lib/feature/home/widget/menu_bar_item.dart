import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

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
          height: context.sized.height * 0.08,
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
          contentPadding: context.padding.verticalLow,
          onTap: onTap,
          leading: SizedBox(
            height: context.sized.height * 0.05,
            child: icon,
          ),
          title: Text(
            menuName,
            style: TextStyle(fontSize: context.sized.height * 0.025),
          ),
        ),
      ],
    );
  }
}
