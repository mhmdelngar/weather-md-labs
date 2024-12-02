import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_md_labs/modules/weather/widgets/weather_page_city_data.dart';
import 'package:weather_md_labs/modules/weather/widgets/weather_page_city_text_field.dart';
import 'package:weather_md_labs/modules/weather/widgets/weather_page_get_weather_button.dart';

import './weather_controller.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              WeatherPageCityTextField(),
              SizedBox(height: 16),
              WeatherPageGetWeatherButton(),
              SizedBox(height: 16),
              WeatherPageCityData(),
            ],
          ),
        ),
      );
    });
  }
}
