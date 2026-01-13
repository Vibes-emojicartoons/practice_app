// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

//Page 1//
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute //transition vertically//
              (
                builder: (context) {
                  return SecondPage();
                },
              ),
            );
          },
          child: Text('First Page'),
        ),
      ),
    );
  }
}

//Page 2//
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute //Transition horizontally
              (
                builder: (context) {
                  return ThirdPage();
                },
              ),
            );
          },
          child: Text('Second Page'),
        ),
      ),
    );
  }
}

//Page 3//
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ThirdPage')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder //custom transition page
              (
                pageBuilder: (c, a1, a2) => SecondPage(),
                transitionsBuilder: (c, a1, a2, child) =>
                    FadeTransition(opacity: a1, child: child),
                transitionDuration: Duration(seconds: 2),
              ),
            );
          },
          child: Text('Third Page'),
        ),
      ),
    );
  }
}


//Here I navigate content//
/* class CustomBottonNavigationBar extends StatefulWidget {
  const CustomBottonNavigationBar({super.key});

  // I removed the constractor from here.//
  @override
  State<CustomBottonNavigationBar> createState() =>
      _CustomBottonNavigationBarState();
}

class _CustomBottonNavigationBarState extends State<CustomBottonNavigationBar> {
  //change color when an icon is selected//
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    //onTimeTapped is a function from BottomNavigationBar//
    setState(() {
      _selectedIndex = index;
    });
  }

  //setting pages for the navigation//
  List<Widget> get _page => [
    Text('Home', style: TextStyle(color: Colors.red)),
    Container(width: 100, height: 50, color: Colors.pink),
    Text('Info'),
  ];
  /* final List<Widget> _page = [
    Container(width: 100, height: 50, color: Colors.red),
    Container(width: 100, height: 50, color: Colors.blue),
    Container(width: 100, height: 50, color: Colors.pink),
  ]; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _page[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, //you can also use "shifting" for the nav bar to change color according to the color of the icon inside BottomNavigationBarItem//
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
        ],
        selectedItemColor: Colors.pink,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped, //here is the index//
      ),
    );
  }
}
 */
//setting my widget//

/* class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}
//extending my statfulwidget//

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count'),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text('Jahneh'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                  ();
                },
                child: Text('Remove'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 */
/*child: Wrap(
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
*/

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


