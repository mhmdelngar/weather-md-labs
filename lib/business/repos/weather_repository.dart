import 'package:weather_md_labs/business/models/weather.dart';
import 'package:weather_md_labs/business/services/weather_service.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherRepository {
  final WeatherService _weatherService;

  WeatherRepository(this._weatherService);

  /// Fetches weather data and converts it to a Weather model
  Future<Weather> getWeather(String city) async {
    final Map<String, dynamic> jsonData = await _weatherService.fetchWeatherData(city);
    return Weather.fromJson(jsonData);
  }
}

