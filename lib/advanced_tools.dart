import 'package:flutter/material.dart';

class AdvancedTools extends StatefulWidget {
  @override
  _AdvancedToolsState createState() => _AdvancedToolsState();
}

class _AdvancedToolsState extends State<AdvancedTools> {
 List<Offset> _points = <Offset>[];
 
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.black,
  child: Container(
  //  margin: const EdgeInsets.all(15.0),
    width: 250.0,
    height: 200.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white
    ),
    child: new GestureDetector(
          onPanUpdate: (DragUpdateDetails details) {
            setState(() {
              RenderBox object = context.findRenderObject();
              Offset _localPosition =
                  object.globalToLocal(details.globalPosition);
              _points = new List.from(_points)..add(_localPosition);
            });
          },
          onPanEnd: (DragEndDetails details) => _points.add(null),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Image.asset('assets/draw.png',
            width: 15,height: 15,),
            Padding(padding: const EdgeInsets.only(right: 5,top: 10),),
            Text("Draw it",style: TextStyle(color: Colors.black, fontSize: 15,
            decoration: TextDecoration.none),),
            Padding(padding: const EdgeInsets.only(right: 200),),
            IconButton(icon: Icon(Icons.delete_forever),
            iconSize: 20,
         onPressed: () => _points.clear(),
         color: Colors.black,
         ),
          ], 
          ),
              CustomPaint(
                painter: new Signature(points: _points),
                size: Size.fromHeight(90)
              ),
            ],
          )
     //     onDoubleTap: () => _points.clear(),
        ),
        ),
      );
  }
}

class Signature extends CustomPainter {
  List<Offset> points;

  Signature({this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.green
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(Signature oldDelegate) => oldDelegate.points != points;
}