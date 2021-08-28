import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "SANTULAN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              foreground: Paint()
                //..style = PaintingStyle.stroke
                ..strokeWidth = 6
                ..color = Colors.white,
            ),
          ),
          backgroundColor: Colors.orange),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.orange, Colors.white, Colors.green],
        )),
        child: Container(
          //padding: EdgeInsets.only(top: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Material(
                color: Colors.orange[400],
                borderRadius: BorderRadius.circular(10.0),
                elevation: 10.0,
                child: MaterialButton(
                    minWidth: 140,
                    height: 40,
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    child: Text(
                      "Login",
                    )),
              )),
              SizedBox(
                height: 20.0,
              ),
              Center(
                  child: Material(
                color: Colors.orange[400],
                borderRadius: BorderRadius.circular(10.0),
                elevation: 10.0,
                child: MaterialButton(
                    minWidth: 140,
                    height: 40,
                    onPressed: () {
                      Navigator.pushNamed(context, "reg");
                    },
                    child: Text(
                      "Registration",
                    )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
