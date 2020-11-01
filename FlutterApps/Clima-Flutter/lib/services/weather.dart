import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

final String _apiKey = '8100b9a118452a069e508e4d5569bf0e';

class WeatherModel {
  Future<dynamic> getCurrentData() async {
    Location location = Location();

    await location.getCurrentLocation();
    double lon = location.longitude;
    double lat = location.latitude;
    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$_apiKey&units=metric';

    Map weatherData = await NetworkHelper(url).getUrlData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
