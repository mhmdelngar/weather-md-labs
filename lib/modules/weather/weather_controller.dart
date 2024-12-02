import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weather_md_labs/business/models/weather.dart';
import 'package:weather_md_labs/helpers/base_controller.dart';
import 'package:weather_md_labs/business/repos/weather_repository.dart';

class WeatherController extends BaseGetxController {
  @override
  void onInit() {
    super.onInit();
    _init();
  }

  Future<void> _init() async {

  }
  final WeatherRepository _weatherRepository;

  WeatherController(this._weatherRepository);
  TextEditingController cityController = TextEditingController();




  var isLoading = false.obs;
  var weather = Rxn<Weather>();
  var errorMessage = ''.obs;

  Future<void> fetchWeather(String city) async {
    isLoading.value = true;
    errorMessage.value = '';
    try {
      final weatherData = await _weatherRepository.getWeather(city);
      weather.value = weatherData;
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
