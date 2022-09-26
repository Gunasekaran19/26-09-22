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
        body: Center(
          child: Container(
            child: Ink(
              decoration:
                  ShapeDecoration(shape: CircleBorder(), color: Colors.green),
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
