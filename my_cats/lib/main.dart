import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("my kitties")),
          backgroundColor: Colors.deepPurple[900],
        ),
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Image(
            image: AssetImage('images/cats.jpg'),
          ),
        ),
      ),
    ),
  );
}
