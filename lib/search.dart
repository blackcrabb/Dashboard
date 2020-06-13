import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  TextEditingController _controller;
String url = '';

@override
void initState() {
  super.initState();
  _controller = TextEditingController();
}

@override
void dispose() {
  _controller.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
  return 
  Material(
    color: Colors.black,
      child: Container(
            alignment: Alignment.bottomLeft,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child:Row(
          children: <Widget>[
           Expanded(
             child: Image.asset('assets/GLogo.png',
             alignment: Alignment.center,
             width: 25,height: 25,),
           ),
           Expanded(child: 
           TextField( controller: _controller, 
           style: TextStyle(
             color: Colors.black,
           ),
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.black,
            fontSize: 20,
            ),
            hintText: "Search",
            border: InputBorder.none,
          ),
           onSubmitted:(String value)async {
            url = 'https://www.google.com/search?q="$value"';
            if (await canLaunch(url)) {
            await launch(url);
            } else {
            throw 'Could not launch $url';
          }
        } ,
        ), 
           )
          ],
        ), 
          ),
  );

  }
}