import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/george.webp"),
              ),
              Text(
                "George",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "ScriptMT",
                ),
              ),
              Text(
                "CURIOUS MONKEY",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontFamily: "OneStroke",
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.red,
                ),
              ),
              Card(
                color: Colors.red,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text(
                        "(555)226-2627",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SourceSansPro",
                          fontSize: 22,
                        ),
                      )),
                ),
              ),
              Card(
                color: Colors.red,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      title: Text(
                        "george@bananas.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SourceSansPro",
                          fontSize: 22,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
