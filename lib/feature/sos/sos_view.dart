import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:save_disaster/feature/sos/sos_view_mixin.dart';

///Sos View of the app
@RoutePage()
class SosView extends StatefulWidget {
  ///Sos View Constructor
  const SosView({super.key});

  @override
  State<SosView> createState() => _SosViewState();
}

class _SosViewState extends State<SosView> with SosViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentAddress),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              onPressed: () async {
                setState(() async {
                  currentLocation = await getCurrentLocation();
                  await getAddressFromCoordinates();

                  print(currentAddress);
                });
              },
              icon: const Icon(Icons.emergency_outlined),
              label: const Text('SOS'),
            ),
          ],
        ),
      ),
    );
  }
}
