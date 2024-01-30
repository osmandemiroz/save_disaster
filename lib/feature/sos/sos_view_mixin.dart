// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:save_disaster/feature/sos/sos_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

///sos view mixin
mixin SosViewMixin on State<SosView> {
  ///firebase instance of the client

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
        saveAddress();
      });
    } catch (e) {
      //TODO: add error handling
      print(e);
    }
  }

  ///save the address to the cache
  Future<void> saveAddress() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('address', currentAddress);
    await preferences.setDouble('latitude', currentLocation!.latitude);
    await preferences.setDouble('longitude', currentLocation!.longitude);
  }

  ///initialize address
  Future<void> initializeAddress() async {
    setState(() async {
      currentLocation = await getCurrentLocation();
      await getAddressFromCoordinates();
    });
  }
}
