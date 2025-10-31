import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class HomeScreen extends StatefulWidget{
  const   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  

}

class _HomeScreenState extends State<HomeScreen> {
  final WeatherServices _weatherServices = WeatherServices();


final TextEditingController _controller = TextEditingController();

bool _isLoading = false;

Weather? _weather;

void _getWeather() async{
  setState(() {
    _isLoading=true;
  });


  try{
    final weather = await _weatherServices.fetchWeather(_controller.text);
    setState(() {
      _weather =weather;
      _isLoading = false;

    });

  }

  catch(e){

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error fetching weather data ")));
  }
}


@override


Widget build(BuildContext context){

  return Scaffold(
body: Container(
  width: double.infinity,
  height: double.infinity,
  decoration: BoxDecoration(

    gradient: _weather

  ),
  child: Center(
    child: Text("weather app ui comming soon"),
  ),
),
  );
}
}
