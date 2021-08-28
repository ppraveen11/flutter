//import 'package:cloud_firestore/cloud_firestore.dar

import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseconnect/screens/app.dart';
import 'package:firebaseconnect/screens/home.dart';
import 'package:firebaseconnect/screens/login.dart';
import 'package:firebaseconnect/screens/reg.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // remember this two line is important
  await Firebase
      .initializeApp(); // if you use await than you have to mark function as async
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: MyHome(),
    initialRoute: "home",
    routes: {
      "/": (context) => MyHome(),
      "reg": (context) => MyReg(),
      "login": (context) => MyLogin(),
      "app": (context) => MyApp(),
    },
  ));
}



/* 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var fsconnect = FirebaseFirestore.instance;

  get() async {
    var a = await fsconnect.collection("donations").get();
    // print(a.docs[0].data());

    for (var i in a.docs) {
      print(i.data());
    }
  }

  @override
  Widget build(BuildContext context) {
    var fsconnect = FirebaseFirestore.instance;

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("firebase"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                fsconnect.collection("donations").add({
                  'name': 'eric',
                  'title': 'student',
                });
              },
              child: Text("send data")),
          ElevatedButton(onPressed: () => get(), child: Text("getdata"))
        ],
      ),
    ));
  }
}
*/