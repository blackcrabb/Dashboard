import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
     return Container(
    margin: const EdgeInsets.all(5.0),
   // width: 300.0,
    height: 200.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(bottom: 5),),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Image.asset('assets/recommendation1.png',
            width: 20,height: 20,),
            Padding(padding: const EdgeInsets.only(right: 5,top: 5),),
            Text("Recommended",style: TextStyle(color: Colors.black, fontSize: 15,
            decoration: TextDecoration.none),)
          ], 
          ),
          Padding(padding: const EdgeInsets.all(10),),
          SizedBox(
         //   width: 200,
                height: 150,
                child: GridView.count(
                //  scrollDirection: Axis.vertical,
                              padding: const EdgeInsets.all(6),
                              crossAxisSpacing: 30,
                              mainAxisSpacing: 1,
                              crossAxisCount: 4,
                              children: <Widget>[
                                     
                                      CircleAvatar(   
                                        child: Image.asset('assets/hotstar.png') ),

                                      CircleAvatar(  child: Image.asset('assets/insta.png'  )),
                                      
                                      CircleAvatar(child: Image.asset('assets/lifeafter.png')),
                                      
                                      CircleAvatar(child: Image.asset('assets/netflix.png')),
                                     
                                      CircleAvatar(child: Image.asset('assets/snap.png')),
                                     
                                      CircleAvatar(child: Image.asset('assets/prime.png')), 
                                      
                                      CircleAvatar(child: Image.asset('assets/pubg.png')),
                                      
                                      CircleAvatar(child: Image.asset('assets/telegram.png')),
                                     
                                      CircleAvatar(child: Image.asset('assets/whatsapp.png')),
      
              ],
          ),
          ),
        ]
      ),
      );
  }
}