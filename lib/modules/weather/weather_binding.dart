import 'package:weather_md_labs/business/repos/weather_repository.dart';
import 'package:weather_md_labs/business/services/weather_service.dart';

import './weather_controller.dart';
import 'package:get/get.dart';

class WeatherBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut(() => WeatherService());
    Get.lazyPut(() => WeatherRepository(Get.find()));
    Get.lazyPut(() => WeatherController(Get.find()));
  }
}
