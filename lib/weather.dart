//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

  final String url = "https://api.openweathermap.org/data/2.5/weather?q=New%20Delhi&appid=e46f94d3b8e95b838477bf9cba05fa36";

  String data;

   @override
  void initState(){
    super.initState();
    this.getJsonData();
  }
  Future<String> getJsonData() async {
    var response = await http.get(
      Uri.encodeFull(url),
      headers: {"Accept": "application/json"}
    );
   print(response.body); 
  //  setState(() {
 //    var convertDatatoJson = json.decode(response.body);
 //     data = convertDatatoJson['base'];
 //   });

    return "Success"; 
  }

 // String x = data['temp']

  @override
  Widget build(BuildContext context) {
    return  Container(
    margin: const EdgeInsets.only(top: 20),
    width: 200,
    height: 68.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.black
      ),
    child: Row(
     // mainAxisAlignment: MainAxisAlignment.start,
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
            Text("40°C", style: TextStyle(fontSize: 30,color: Colors.white,decoration: TextDecoration.none),),
            Text("January, 12 May", style: TextStyle(fontSize: 10,color: Colors.white,decoration: TextDecoration.none),)
          ],
        ),
        //5
       Padding(padding: const EdgeInsets.only(right: 180),),
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