import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[500],
          leading: Icon(Icons.menu),
          title: Center(child: Text("Eish jah neh")),
          actions: [InkWell(child: Icon(Icons.settings))],
        ),

        body: Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              border: Border.all(width: 2, color: Colors.brown),
              borderRadius: BorderRadius.all(Radius.circular(150)),
            ),
            child: Text(
              'YASHO SKEEM',
              style: TextStyle(
                fontFamily: 'Rancho',
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.yellow,
                wordSpacing: 10,
                letterSpacing: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
