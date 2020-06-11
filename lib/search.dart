import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
  return
  Container(
        alignment: Alignment.bottomCenter,
        width: 250,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child:Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
       Expanded(
         child: Image.asset('assets/GLogo.png',
         width: 20,height: 20,),
       ),
       Expanded(child: Text("Search",
       style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold),
       ))
      ],
    ), 
      );
  }
}