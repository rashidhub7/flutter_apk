import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Flutter()));

class Flutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 340,
            height: 340,
            padding: EdgeInsets.only(top: 150, left: 50),
            child: Image.asset("assets/images/firebase.png"),
        ),
          Padding(padding: EdgeInsets.only(top: 200)),
          Container(
            width: 300,
            height: 60,
            padding: EdgeInsets.only(top: 10, left: 80),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: <Widget>[
                  Container(
                    child:CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/google.png"),
                      radius: 30,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only( left: 40),
                    child: Text(
                      'Google',
                      style: GoogleFonts.lato(color: Colors.white,fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            height: 60,
            padding: EdgeInsets.only(top: 10, left: 80),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.green,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(
                children: <Widget>[
                  Container(
                    child:Icon(Icons.phone)
                  ),
                  Container(
                    padding: EdgeInsets.only( left: 50),
                    child: Text(
                      'Phone',
                      style: GoogleFonts.lato(color: Colors.white,fontSize: 19),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
