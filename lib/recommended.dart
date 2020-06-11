import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
     return Center(
  child: Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.green,
    width: 48.0,
    height: 48.0,
  ),
);
  }
}