import 'package:flutter/material.dart';

class Corona extends StatefulWidget {
  @override
  _CoronaState createState() => _CoronaState();
}

class _CoronaState extends State<Corona> {
  @override
  Widget build(BuildContext context) {
    return  Center(
  child: Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.lime,
    width: 48.0,
    height: 48.0,
  ),

      );
  }
}