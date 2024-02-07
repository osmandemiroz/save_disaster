// ignore_for_file: lines_longer_than_80_chars, inference_failure_on_untyped_parameter

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:save_disaster/feature/sos/sos_view.dart';
import 'package:save_disaster/product/navigation/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

///sos view mixin
mixin SosViewMixin on State<SosView> {
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    surnameController.dispose();
  }

  ///button pressed
  final ValueNotifier<bool> isButtonPressed = ValueNotifier<bool>(false);

  ///emergency color
  final Color emergencyColor = Colors.red.shade700;

  ///name controller
  TextEditingController nameController = TextEditingController();

  ///surname controller
  TextEditingController surnameController = TextEditingController();

  ///button name of the sos view
  final String buttonName = 'SOS';

  ///collection reference
  CollectionReference addresses =
      FirebaseFirestore.instance.collection('addresses');

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
    isButtonPressed.value = true;

    ///Check the permission of the app
    servicePermission = await Geolocator.isLocationServiceEnabled();

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
      throw Exception(e);
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
      await saveAddress();
      await addAddresses();
    });
  }

  ///add address to service
  Future<void> addAddresses() {
    return addresses.add({
      'address': currentAddress,
      'latitude': currentLocation!.latitude,
      'longitude': currentLocation!.longitude,
      'name': nameController.text,
      'nameId': surnameController.text,
      'time': Timestamp.now(),
    }).then((value) {
      nameController.clear();
      surnameController.clear();
      isButtonPressed.value = false;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('SOS request sent'),
        ),
      );
    }).catchError((error) => throw Exception(error));
  }

  ///leading go back on pressed function
  void goBackHome() {
    dispose();
    context.router.push(const HomeRoute());
  }
}
