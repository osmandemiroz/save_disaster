import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/sos/sos_view_mixin.dart';
import 'package:save_disaster/product/widget/big_text.dart';

///Sos View of the app
@RoutePage()
final class SosView extends StatefulWidget {
  ///Sos View Constructor
  const SosView({super.key});

  @override
  State<SosView> createState() => _SosViewState();
}

final class _SosViewState extends State<SosView> with SosViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: goBackHome,
          icon: const Icon(Icons.close_sharp),
        ),
      ),
      body: Center(
        child: Padding(
          padding: context.padding.normal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigText(
                title: 'JUST USE FOR EMERGENCY',
                color: emergencyColor,
              ),
              SizedBox(height: context.sized.height * 0.05),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  border: const OutlineInputBorder().copyWith(
                    borderRadius: context.border.normalBorderRadius,
                  ),
                ),
              ),
              SizedBox(height: context.sized.height * 0.02),
              TextField(
                controller: surnameController,
                decoration: InputDecoration(
                  hintText: 'Enter your Surname',
                  border: const OutlineInputBorder().copyWith(
                    borderRadius: context.border.normalBorderRadius,
                  ),
                ),
              ),
              Text(currentAddress),
              ValueListenableBuilder<bool>(
                valueListenable: isButtonPressed,
                builder: (context, value, child) {
                  if (value) {
                    return const CircularProgressIndicator();
                  } else {
                    return child!;
                  }
                },
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                      context.sized.width * 0.3,
                      context.sized.height * 0.08,
                    ),
                    backgroundColor: emergencyColor,
                  ),
                  onPressed: () {
                    if (nameController.text.isEmpty ||
                        surnameController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text('Enter your name and surname'),
                        ),
                      );
                    } else {
                      initializeAddress();
                    }
                  },
                  icon: const Icon(Icons.emergency),
                  label: Text(
                    buttonName,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
