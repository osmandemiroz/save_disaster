import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:save_disaster/feature/sos/sos_view.dart';

///sos view mixin
mixin SosViewMixin on State<SosView> {
  ///current location of the client
  Position? currentLocation;

  ///service permission of the sos view initially false
  late bool servicePermission = false;

  ///location permission
  late LocationPermission permission;

  ///current address of the client
  String currentAddress = '';

  ///get the currentLocation from client and check the permissions
  Future<Position> getCurrentLocation() async {
    ///Check the permission of the app
    servicePermission = await Geolocator.isLocationServiceEnabled();
    if (!servicePermission) {
      print('location service is not enabled');
    }
    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return Geolocator.getCurrentPosition();
  }

  ///get the address from the current location and convert to the string
  Future<void> getAddressFromCoordinates() async {
    try {
      final placeMarks = await placemarkFromCoordinates(
        currentLocation!.latitude,
        currentLocation!.longitude,
      );

      final place = placeMarks[0];

      setState(() {
        currentAddress =
            '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
      });
    } catch (e) {
      print(e);
    }
  }
}
