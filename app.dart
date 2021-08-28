import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var authc = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "SANTULAN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = Colors.white,
            ),
          ),
          backgroundColor: Colors.orange,
          actions: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 30,
              ),
              radius: 20.0,
              backgroundColor: Colors.white,
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.orange, Colors.white, Colors.green],
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 120.0, left: 20.0),
              ),
              Expanded(
                child: Container(
                  //child: MyList(),
                  //height: 300.0,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
