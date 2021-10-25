// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:clima_app/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const spinkit = SpinKitWanderingCubes(
  color: Colors.white,
  size: 100.0,
);

// ignore: use_key_in_widget_constructors
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: spinkit,
      ),
    );
  }
}
