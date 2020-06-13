import 'package:flutter/material.dart';

class Corona extends StatefulWidget {
  @override
  _CoronaState createState() => _CoronaState();
}

class _CoronaState extends State<Corona> {
  @override
  Widget build(BuildContext context) {
    return  Container(
    margin: const EdgeInsets.all(10.0),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue[600],
    ),
    height: 70.0,
    child: Row(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Coronavirus(COVID -19)",
            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              decoration: TextDecoration.none),
            
            ),
            Padding(padding: EdgeInsets.all(3.0),),
            Text("Get the latest information",
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,fontSize: 10,
                               decoration: TextDecoration.none),
            ),
          ],
          ),
         /* Column(
            children: <Widget>[
              Icon(
                Icons.close,
                color: Colors.black,
              ),
               Padding(padding: EdgeInsets.all(4.0),),
               RaisedButton(
                 color: Colors.blue[300],
                 child: Text("Click here->",style: TextStyle(fontSize: 10,),),
                 onPressed: (){},)
            ],)*/
      ],
    ),
  );
  }
}