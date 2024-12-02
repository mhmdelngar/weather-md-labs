import 'package:flutter/material.dart';
import 'package:weather_md_labs/business/models/weather.dart';


class WeatherItemView extends StatelessWidget {
  const WeatherItemView({
    super.key, required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weather.cityName ?? '',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          '${weather.temperature}°C',
          style: const TextStyle(fontSize: 48),
        ),
        Text(weather.description ?? ''),
        Image.network(
          'http://openweathermap.org/img/wn/${weather.icon}@2x.png',
        ),
      ],
    );
  }
}
