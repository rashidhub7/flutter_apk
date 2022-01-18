import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apk/user_home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Checkout()));

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Order Summary",
            style: GoogleFonts.lato(
                color: Colors.grey, fontSize: 17, fontWeight: FontWeight.w400),
          ),

          leading:   IconButton(
        icon: const Icon(Icons.arrow_back,color: grey,),
      color: Colors.white,
      onPressed: () {

        Navigator.of(context).pop();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>  MyApp()));
      },
    ),


        ),
        body: Column(
          children: [

                Container(
                  padding: EdgeInsets.only(left: 4, top: 18),
                  width: 350,
                  height: 65,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.green[900],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 80),
                          child: Text(
                            "2 Dishes - 2 Items",
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(padding: EdgeInsets.only(left: 31,top: 30),
                      child: Text(
                        "Gopi\n"
                        "Manchurian\n"
                        "Dry",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 136,
                      height: 35,
                      padding: EdgeInsets.only(top: 10, left: 40),
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.green[900],
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          children: <Widget>[
                            Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Icon(
                                  Icons.minimize,
                                  size: 17,
                                )),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                '1',
                                style: GoogleFonts.lato(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.add,
                                  size: 17,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "INR 20.00",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
            Container(padding: EdgeInsets.only(top: 30,right: 250),
              child: Text(
                "INR 20.00\n"
                "112 calories",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
                Container(padding: EdgeInsets.only(top: 10),
                  child: Divider(
                    thickness: 1.0,
                    color: Colors.grey,
                    indent: 30,
                    endIndent: 30,
                  ),
                ),



            Row(
              children: [
                Container(padding: EdgeInsets.only(left: 31,top: 30),
                  child: Text(

                        "Spicy Chicken\n"
                        "65",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 136,
                  height: 35,
                  padding: EdgeInsets.only(top: 10, left: 40),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.green[900],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Row(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.minimize,
                              size: 17,
                            )),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '1',
                            style: GoogleFonts.lato(
                                color: Colors.white, fontSize: 16),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.add,
                              size: 17,
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "INR 245.00",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Container(padding: EdgeInsets.only(top: 30,right: 250),
              child: Text(
                "INR 45.00\n"
                    "250 calories",
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(padding: EdgeInsets.only(top: 10),
              child: Divider(
                thickness: 1.0,
                color: Colors.grey,
                indent: 30,
                endIndent: 30,
              ),
            ),
            Row(
              children: [
                Container(padding: EdgeInsets.only(top: 20,left: 50),
                  child: Text(
                    "Total Amount ",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(padding: EdgeInsets.only(top: 20,left: 60),
                  child: Text(
                    "INR 65.00",
                    style: GoogleFonts.lato(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),




            Container(
            width: 400,
              padding: EdgeInsets.only(top: 200, ),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.green[900],
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only( left: 120),
                        child:Text("Place Order",style: GoogleFonts.lato(
                    color: Colors.grey,
                    fontSize: 21,
                    fontWeight: FontWeight.w500),
                ),)



                  ],

              ),
            ),


    ),

    ],
        ),
    );
  }
}
