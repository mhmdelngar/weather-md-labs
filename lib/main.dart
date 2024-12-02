import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/weather/weather_binding.dart';
import 'modules/weather/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherPage(),
      initialBinding: WeatherBinding(),
    );
  }
}

