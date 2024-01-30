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
              onPressed: () async => initializeAddress,
              icon: const Icon(Icons.emergency_outlined),
              label: const Text('SOS'),
            ),
            FutureBuilder(
              future: Future.delayed(
                  const Duration(seconds: 3), () => 'Data Added'),
              // ignore: strict_raw_type
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator();
                  case ConnectionState.none:
                    break;
                  case ConnectionState.active:
                    return const LinearProgressIndicator();
                  case ConnectionState.done:
                    return const FlutterLogo();
                }
                if (snapshot.hasData) {
                  return const Text('Data Added');
                } else {
                  return const Text('No Data');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
