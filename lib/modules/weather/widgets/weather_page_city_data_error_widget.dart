import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../weather_controller.dart';

class WeatherPageCityDataErrorWidget extends StatelessWidget {
  const WeatherPageCityDataErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherController>(builder: (controller) {
      return Text(
        controller.errorMessage.value,
        style: const TextStyle(color: Colors.red),
      );
    });
  }
}
