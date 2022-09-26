import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int tapedtimes = 0;
  void tapping() {
    setState(() {
      tapedtimes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GestureDetector(
      onTap: () {
        tapping();
      },
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('AppBar')),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Hey This taped $tapedtimes number'),
                GestureDetector(
                  child: Text(
                    'Tap me',
                    style: TextStyle(
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
