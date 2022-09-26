import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text('AppBar'), actions: [
            Ink(
              decoration:
                  ShapeDecoration(shape: CircleBorder(), color: Colors.green),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ),
          ]),
          body: SingleChildScrollView(
            padding: new EdgeInsets.all(20.0),
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 189,
                  width: 200,
                  child: Center(child: Text('hey this is guna')),
                  color: Colors.green,
                ),
                SizedBox(
                  height: 19,
                  width: 10,
                ),
                Container(
                  height: 189,
                  width: 200,
                  child: Center(child: Text('hey this is guna')),
                  color: Colors.green,
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  height: 189,
                  width: 200,
                  child: Center(child: Text('hey this is guna')),
                  color: Colors.green,
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  height: 189,
                  width: 200,
                  child: Center(child: Text('hey this is guna')),
                  color: Colors.green,
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                  height: 189,
                  width: 200,
                  child: Center(child: Text('hey this is guna')),
                  color: Colors.green,
                ),
              ],
            ),
          )),
    );
  }
}
