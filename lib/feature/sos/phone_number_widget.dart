import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

///PhoneNumberWidget
final class PhoneNumberWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    {
      return Padding(
        padding: context.padding.low,
        child: Container(
          decoration: const BoxDecoration(),
          child: Padding(
            padding: context.padding.medium,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => deleteNumber,
                ),
                Padding(
                  padding: context.padding.low,
                  child: Text(
                    number,
                    style: TextStyle(fontSize: context.sized.height * 0.02),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
