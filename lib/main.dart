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
          title: Center(child: Text("Ke nna Bola")),
          actions: [InkWell(child: Icon(Icons.settings))],
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                child: Text(
                  'Ke Bola skeem',
                  style: TextStyle(
                    fontFamily: 'Rancho',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(color: Colors.pink, width: 200),
              Container(color: Colors.yellow, width: 300),
              Container(color: Colors.black, width: 400),
              Container(color: Colors.brown, width: 500),
            ],
          ),
        ),
      ),
    );
  }
}



//Placing an image in different ways//
    /*body: Center(
          child: Container(
            alignment: Alignment.center,
            //padding: EdgeInsets.all(20),//
            height: 300,
            width: 300,
            child: ClipOval(
              child: Image.asset('pictures/koki.png', fit: BoxFit.cover),
            ),*/

            /*decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(
                image: AssetImage('pictures/koki.png'),
                fit: BoxFit.cover,
              ),
            ),*/

            /*child: Image.asset(
              "pictures/koki.png",
              fit: BoxFit.contain,
              alignment: Alignment.centerLeft,
              repeat: ImageRepeat.repeatY,*/

            /*decoration: BoxDecoration(
              color: Colors.purpleAccent,
              border: Border.all(width: 2, color: Colors.brown),
              borderRadius: BorderRadius.all(Radius.circular(150)),
            ),*/

            /*child: Text(
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
            )*/


