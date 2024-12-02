import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class WeatherService {
  final String _baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  /// todo : move this to config file ( cuz it is just an assessment then it is ok )
  final String _apiKey = 'fa0eeb3bbfa6e26fc9c0cdc076e667f2';

  /// Fetches weather data as raw JSON
  Future<Map<String, dynamic>> fetchWeatherData(String city) async {
    final url = '$_baseUrl?q=$city&units=metric&appid=$_apiKey';
    try {
      log(url, name: 'Get');
      final response = await http.get(Uri.parse(url));
      log(response.body, name: 'Response Body');
      if (response.statusCode == 200) {
        return jsonDecode(response.body) as Map<String, dynamic>;
      } else {
        throw Exception('City not found');
      }
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
