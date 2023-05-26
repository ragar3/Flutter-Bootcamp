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
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "(555)226-2627",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SourceSansPro",
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "george@bananas.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "SourceSansPro",
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
