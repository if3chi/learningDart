import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

final String _apiKey = '8100b9a118452a069e508e4d5569bf0e';

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
    Location location = Location();

    await location.getCurrentLocation();
    double lon = location.longitude;
    double lat = location.latitude;
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$_apiKey';

    Map weatherData = await NetworkHelper(url).getUrlData();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return LocationScreen();
      }),
    );

    // double temp = weatherData['main']['temp'];
    // int condition = weatherData['weather'][0]['id'];
    // String cityName = weatherData['name'];

    // print(temp);
    // print(condition);
    // print(cityName);
  }

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
      body: Center(
        child: SpinKitPouringHourglass(
          color: Color(0xffa05344).withOpacity(.6),
          size: 160.00,
        ),
      ),
    );
  }
}
