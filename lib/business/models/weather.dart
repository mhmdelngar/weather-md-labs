class Weather {
  final String cityName;
  final double temperature;
  final String description;
  final String icon;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.icon,
  });

  /// Factory method to create a Weather object from JSON
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'] as String,
      temperature: (json['main']['temp'] as num).toDouble(),
      description: json['weather'][0]['description'] as String,
      icon: json['weather'][0]['icon'] as String,
    );
  }

  /// Converts the Weather object to JSON (if needed)
  Map<String, dynamic> toJson() {
    return {
      'name': cityName,
      'main': {'temp': temperature},
      'weather': [
        {'description': description, 'icon': icon}
      ],
    };
  }
}
