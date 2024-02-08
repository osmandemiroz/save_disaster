// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

///PhoneNumberWidget
final class PhoneNumberWidget extends StatefulWidget {
  ///PhoneNumberWidget constructor
  const PhoneNumberWidget({
    required this.number,
    required this.deleteNumber,
    super.key,
  });

  ///name of the phone number
  final String number;

  ///delete number of the phone number list
  final Function deleteNumber;

  @override
  State<PhoneNumberWidget> createState() => _PhoneNumberWidgetState();
}

class _PhoneNumberWidgetState extends State<PhoneNumberWidget> {
  @override
  Widget build(BuildContext context) {
    {
      return Container(
        margin: context.padding.low,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                widget.deleteNumber();
              },
            ),
            Padding(
              padding: context.padding.low,
              child: Text(
                widget.number,
                style: TextStyle(fontSize: context.sized.height * 0.01),
              ),
            ),
          ],
        ),
      );
    }
  }
}
