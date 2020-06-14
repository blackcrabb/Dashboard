import 'package:dashboard/advanced_tools.dart';
import 'package:dashboard/corona.dart';
import 'package:dashboard/recommended.dart';
import 'package:dashboard/search.dart';
import 'package:dashboard/shortcut.dart';
import 'package:dashboard/weather.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
          ListView(
          padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Weather(),
        Padding(padding: const EdgeInsets.all(6.0)),
          Corona(),
           Padding(padding: const EdgeInsets.all(6.0)) ,
          Shortcut(),
      Padding(padding: const EdgeInsets.all(6.0)),
          Recommended(),
           Padding(padding: const EdgeInsets.all(8.0)),
          AdvancedTools(),
           Padding(padding: const EdgeInsets.all(8.0)),
           Search()
        ],
       );
        
  }
}