import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

  final String url = "https://api.openweathermap.org/data/2.5/weather?q=New%20Delhi&units=metric&appid={yourapikey}";

  var temp;
  var now = DateTime.now();
 
  Future getWeather () async {
    http.Response response = await http.get(url);
    var result = jsonDecode(response.body);
    setState(() {
      this.temp = result['main']['temp'];
    });
  }

   @override
  void initState(){
    super.initState();
    this.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
    margin: const EdgeInsets.only(top: 20),
    width: 250,
    height: 68.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.black
      ),
    child: Row(
     mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //1
        Padding(padding: const EdgeInsets.only(right: 8),),
        //2
        Image.asset('assets/weather.png', width: 40,height: 40,),
        //3
        Padding(padding: const EdgeInsets.only(right: 4),),
        //4
        Column(
          children: <Widget>[
            Text(
              temp != null ? 
              temp.toString() + "\u00B0" + "C" 
              : "!"
              , 
              style: TextStyle(fontSize: 20,color: Colors.white,decoration: TextDecoration.none),),
               Padding(padding: const EdgeInsets.only(bottom: 4),),
            Text( now.toString().substring(0,10), style: TextStyle(fontSize: 10,color: Colors.white,decoration: TextDecoration.none),)
          ],
        ),
        //5
       Padding(padding: const EdgeInsets.only(right: 192),),
        //6
        Column(
         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.more_vert,
              color: Colors.white,
                size: 15,
            ),
            Padding(padding: const EdgeInsets.only(bottom: 9) ,),
             Icon(
              Icons.settings,
              color: Colors.white,
                size: 15,
            )
          ],
        )
      ],
    ),
  );
  }
}
