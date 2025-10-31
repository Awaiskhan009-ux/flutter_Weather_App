class Weather {

  final String cityName;
  final double temperature;
  final String description;
  final int humidity;
  final double windSpeed;
  final int sunrise;
  final int sunset; 


  Weather({

    required this.cityName,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.sunrise,
    required this.sunset,
    required this.windSpeed,
  });

     factory Weather.fromJson(Map<String,dynamic> json){
      return Weather(cityName: json['name'], temperature: json['main']['temp'], description: json['weather']['description'], humidity: json["main"]['humidity'], sunrise: json['sys']['sunrise'], sunset: json['sys']['sunset'], windSpeed: json['wind']['speed']);

     }
}