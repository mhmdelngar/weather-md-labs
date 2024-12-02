import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../weather_controller.dart';

class WeatherPageGetWeatherButton extends StatelessWidget {
  const WeatherPageGetWeatherButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherController>(builder: (controller) {
      return ElevatedButton(
        onPressed: () {
          if (controller.cityController.text.trim().isNotEmpty) {
            controller.fetchWeather(controller.cityController.text.trim());
          }
        },
        child: const Text('Get Weather'),
      );
    });
  }
}
