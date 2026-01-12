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
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 4.0,
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: const Text(
                    'KB',
                    style: TextStyle(fontSize: 10, color: Colors.amber),
                  ),
                ),
                label: const Text('Koketso Bola  Matshe'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: const Text(
                    'OL',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
                label: const Text('Manqoba'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: const Text(
                    'TP',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ),
                label: const Text('Tebogo Preshhh'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: const Text(
                    'KB',
                    style: TextStyle(fontSize: 10, color: Colors.amber),
                  ),
                ),
                label: const Text('Koketso Bola  Matshe'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: const Text(
                    'TP',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ),
                label: const Text('Tebogo Preshhh'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: const Text(
                    'TP',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                  ),
                ),
                label: const Text('Tebogo Preshhh'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*Here i looked at a card widget.
child: Card(
            elevation: 5,
            color: Colors.black,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(Icons.access_time_filled, color: Colors.amber),
                  title: Text(
                    "Koketso you need to keep on pushing, in God's name",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("Pushing will help you moving foward!"),
                ),
              ],
            ),
          ),*/ 

/* I was aligning using possistion and align attribute.
 Widget _stack() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.blue,
      child: Stack(
        /* alignment: Alignment.bottomLeft, 
        alignment: Alignment(-1, 0), */
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(width: 200, height: 200, color: Colors.redAccent),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(width: 100, height: 100, color: Colors.green),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(width: 100, height: 100, color: Colors.yellow),
          ),
        ],
      ),
    );
  }
  */

/* Widget _redbox() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: Colors.red, border: Border.all()),
    );
  } */

/* body: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              height: 100,
              child: Row(
                /* mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max, */
                children: [
                  _redbox(),
                  Spacer(flex: 1),
                  _redbox(),
                  Spacer(flex: 3),
                  _redbox(),
                  Spacer(flex: 6),
                  _redbox(),
                  /* SizedBox(height: 100, width: 100, child: _redbox()),
                  //Create a gap without the widget child//
                  SizedBox(width: 15),
                  Flexible(fit: FlexFit.tight, flex: 2, child: _redbox()),
                  Flexible(fit: FlexFit.tight, flex: 4, child: _redbox()),
                  Flexible(fit: FlexFit.tight, flex: 6, child: _redbox()), */
                  /* Expanded(child: _redbox(), flex: 3),
                  SizedBox(height: 80, child: _redbox()),
                  Expanded(child: _redbox(), flex: 2),
                  _redbox(), */
                ],
              ),
            ),
          ),
  */

///Here I was learning grid.///
/* child: GridView.count(
            padding: EdgeInsets.all(8),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            childAspectRatio: 0.6,
            children: [
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.black),
              Container(color: Colors.yellow),
              Container(color: Colors.green),
            ],
          ),
        ), */

///Here is me tryign to scroll horizontally and vertically///
/* body: SafeArea(
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
        ), */


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


