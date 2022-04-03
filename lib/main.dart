// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Title of the app"),
          centerTitle: true,
          backgroundColor: Colors.indigo[500],
        ),
        body: Column(
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                margin: const EdgeInsets.all(5.0),
                height: 100,
                width: 100,
                child: Image.network("https://picsum.photos/300/300?random=1")),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              margin: const EdgeInsets.all(20.0),
              color: Color(0xFFA5AFE8),
              child: const Text(
                'data',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Color(0xFF310664),
                  fontFamily: 'BalloonyDemo',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
              margin: EdgeInsets.only(bottom: 20),
              color: Color(0xFFCDCDCD),
              height: 170,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  IconCard("Student", Icons.ac_unit_rounded),
                  IconCard("Instructor", Icons.accessibility_new_sharp),
                  IconCard("Invoice", Icons.publish_sharp),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    flex: 5,
                    child:
                        IconCard("Schedule", Icons.access_time_filled_outlined),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconCard("TEST", Icons.sports_rugby_rounded),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("Hello world"),
          child: const Icon(Icons.download),
          backgroundColor: Colors.indigo[500],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  // String text = "Default Text";
  // IconData icon = Icons.android;

  // IconCard(
  //   this.text,
  //   this.icon, {
  //   Key? key,
  // }) : super(key: key);

  String my_text = "Default";
  IconData my_icon = Icons.android;
  IconCard(this.my_text, this.my_icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      margin: const EdgeInsets.all(5.0),
      color: Colors.indigo[500],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Icon(
              my_icon,
              color: Colors.white,
            ),
          ),
          Text(
            my_text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
