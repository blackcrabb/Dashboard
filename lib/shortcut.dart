import 'package:flutter/material.dart';

class Shortcut extends StatefulWidget {
  @override
  _ShortcutState createState() => _ShortcutState();
}

class _ShortcutState extends State<Shortcut> {
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