

import 'package:flutter/material.dart';

class Shortcut extends StatefulWidget {
  @override
  _ShortcutState createState() => _ShortcutState();
}

class _ShortcutState extends State<Shortcut> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      height: 143,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),)
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(bottom: 5),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(right: 5,top: 15),),
            Image.asset('assets/shortcut.png',
            width: 15,height: 15,),
            Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Text("Shortcuts",style: TextStyle(color: Colors.black, fontSize: 15,
            decoration: TextDecoration.none),)
          ], 
          ),
          Padding(padding: const EdgeInsets.all(10),),
          SizedBox(
                height: 100,
                child: GridView.count(
                              padding: const EdgeInsets.all(6),
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 1,
                              crossAxisCount: 4,
                              children: <Widget>[
                                      Image.asset('assets/app(1).png'),
                                      Image.asset('assets/app(2).png'),
                                      Image.asset('assets/app(3).png'),
                                      Image.asset('assets/app(4).png'),
                                      Image.asset('assets/app(5).png'),
                                      Image.asset('assets/app(6).png'),           
              ],
          ),
          ),
        ]
      ),
    );
  }
}