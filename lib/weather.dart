import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Center(
  child: Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.lime,
    width: 48.0,
    height: 48.0,
  ),

      );
  }
}