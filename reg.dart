import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyReg extends StatefulWidget {
  @override
  _MyRegState createState() => _MyRegState();
}

class _MyRegState extends State<MyReg> {
  var authc = FirebaseAuth.instance;

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          backgroundColor: Colors.orange),
      body: Container(
        //padding: EdgeInsets.only(top: 100.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.orange, Colors.white, Colors.green],
        )),
        child: Center(
          child: Container(
            width: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onChanged: (value) {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  obscureText: true,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onChanged: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 5.0,
                ),
                Material(
                  color: Colors.orange[400],
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: 5.0,
                  child: MaterialButton(
                      minWidth: 140,
                      height: 40,
                      onPressed: () async {
                        try {
                          var user = await authc.createUserWithEmailAndPassword(
                              email: email, password: password);
                          print(user);
                          if (user.additionalUserInfo!.isNewUser == true) {
                            Navigator.pushNamed(context, "app");
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Text("register")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
