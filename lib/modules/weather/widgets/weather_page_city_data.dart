import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_md_labs/modules/weather/widgets/weather_item_view.dart';
import 'package:weather_md_labs/modules/weather/widgets/weather_page_city_data_error_widget.dart';

import '../weather_controller.dart';

class WeatherPageCityData extends StatelessWidget {
  const WeatherPageCityData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherController>(builder: (controller) {
      return Obx(() {
        if (controller.isLoading.value) {
          return const CircularProgressIndicator();
        }

        if (controller.errorMessage.isNotEmpty) {
          return const WeatherPageCityDataErrorWidget();
        }

        if (controller.weather.value != null) {
          return WeatherItemView(
            weather: controller.weather.value!,
          );
        }

        return const Text('Enter a city to get weather information');
      });
    });
  }
}
