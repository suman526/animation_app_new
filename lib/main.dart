import 'package:animation_app/animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "GALLARY",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 10,
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: MyAnimationApp(),
      ),
    ),
  );
}
