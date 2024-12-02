import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../weather_controller.dart';

class WeatherPageCityTextField extends StatelessWidget {
  const WeatherPageCityTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherController>(builder: (controller) {
      return TextField(
        controller: controller.cityController,
        decoration: const InputDecoration(
          labelText: 'Enter City Name',
          border: OutlineInputBorder(),
        ),
      );
    });
  }
}
