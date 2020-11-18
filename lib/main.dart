import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Counter example'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 30),
            ),
            counter == 3 ? Image.asset('images/blueDiamond.jpg') : Container(),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(40),
                  height: 200,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
