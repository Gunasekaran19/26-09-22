import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  PageController page = PageController(initialPage: 0);
  int pagesindex = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('Hay AppBar'),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                page.animateToPage(--pagesindex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linearToEaseOut);
              },
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                page.animateToPage(++pagesindex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linearToEaseOut);
              },
            ),
          ],
        ),
        body: PageView(
          controller: page,
          scrollDirection: Axis.horizontal,
          pageSnapping: true,
          children: [
            Container(
              color: Colors.green,
              child: const Center(
                child: Text(
                  'hey This is page 1',
                  style: TextStyle(color: Colors.yellow),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'hey This is page 2',
                  style: TextStyle(color: Colors.yellow),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 175, 152, 76),
              child: const Center(
                child: Text(
                  'hey This is page 3',
                  style: TextStyle(color: Colors.yellow),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 175, 99, 76),
              child: const Center(
                child: Text(
                  'hey This is page 4',
                  style: TextStyle(color: Color.fromARGB(255, 255, 59, 209)),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 175, 76, 76),
              child: const Center(
                child: Text(
                  'hey This is page 5',
                  style: TextStyle(color: Color.fromARGB(255, 255, 59, 59)),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 175, 76, 153),
              child: const Center(
                child: Text(
                  'hey This is page 6',
                  style: TextStyle(color: Color.fromARGB(255, 59, 255, 255)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
