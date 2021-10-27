import 'package:geolocator/geolocator.dart';

class Location {
  double longitude = 0;
  double latitude = 0;
//THIS CLASS GETS THE LON AND LAT OF USER FROM PHONE AFTER TAKING PERMISSION
  Future<void> getCurrentLocation() async {
    // can only wait for something of type future
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
